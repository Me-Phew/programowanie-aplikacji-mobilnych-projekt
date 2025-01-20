import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_application/utils/common.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logging/logging.dart';
import 'package:http_parser/http_parser.dart';

import 'package:flutter_application/wirtualny-sdk/models/profilePicture/profile_picture.dart';
import 'package:flutter_application/wirtualny-sdk/models/request-data/student_login_with_username_and_password_data.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/errors_response/errors_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/student_login_response/student_login_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/student_profile_picture_updated_response/student_profile_picture_updated_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/modules/auth/wirtualny_auth_exception.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_http_client.dart';
import 'package:flutter_application/utils/biometrics.dart';

class WirtualnyAuth {
  final log = Logger('WirtualnyAuth');

  StudentLoginResponse? _authData;
  int authStateListenersCount = 0;
  late final StreamController<Student?> _authStateController;

  WirtualnyAuth() {
    _authStateController = StreamController<Student?>.broadcast(
      onListen: () {
        authStateListenersCount++;
        _authStateController.add(_authData?.user);
      },
      onCancel: () {
        authStateListenersCount--;
      },
    );
  }

  Future<Either<WirtualnyAuthException, Student>> fetchStudent(
      String token) async {
    final prefs = await SharedPreferences.getInstance();

    WirtualnyHttpClient.instance.dio.options.headers['Authorization'] =
        'Bearer $token';

    int? studentId = prefs.getInt('studentId');

    try {
      final response = await WirtualnyHttpClient.instance.dio
          .get('students/$studentId?depth=5');
      final student = Student.fromJson(response.data);

      prefs.setString('student', jsonEncode(student.toJson()));
      prefs.setString('studentLastUpdate', DateTime.now().toString());

      _authData = StudentLoginResponse(
        exp: 0,
        message: null.toString(),
        token: token,
        user: student,
      );

      if (_authStateHasListeners) {
        _authStateController.add(student);
      }

      return right(student);
    } on DioException catch (e) {
      log.severe('Failed to fetch user data', e);

      return left(WirtualnyAuthException(
        dioException: e,
        message: e.response?.data['message'],
      ));
    }
  }

  Future<void> relogin() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('authToken');

    if (token == null) {
      return;
    }

    // Authenticate with biometrics before proceeding with relogin
    final authenticated = await authenticateWithBiometrics();
    if (!authenticated) {
      return;
    }

    if (!(await hasNetworkAccess())) {
      final savedSerializedStudent = prefs.getString('student');

      if (savedSerializedStudent == null) {
        return;
      }

      final student = Student.fromJson(jsonDecode(savedSerializedStudent));

      _authData = StudentLoginResponse(
        exp: 0,
        message: null.toString(),
        token: token,
        user: student,
      );

      if (_authStateHasListeners) {
        _authStateController.add(student);
      }

      return;
    }

    fetchStudent(token);
  }

  bool get _authStateHasListeners => authStateListenersCount > 0;

  Stream<Student?> authStateChanges() {
    return _authStateController.stream;
  }

  Student? get student => _authData?.user;

  String? get accessToken => _authData?.token;

  Future<void> signOut() async {
    // Clear authentication data
    _authData = null;

    // Notify listeners that the user has signed out
    if (_authStateHasListeners) {
      _authStateController.add(null);
    }

    // Clear the Authorization header
    WirtualnyHttpClient.instance.dio.options.headers.remove('Authorization');

    // Clear any stored tokens
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('authToken');
  }

  Future<Either<WirtualnyAuthException, Student>> loginWithUsernameAndPassword(
      StudentLoginWithUsernameAndPasswordData loginData) async {
    try {
      final response = await WirtualnyHttpClient.instance.dio.post(
        'students/login?depth=5',
        data: loginData.toJson(),
      );

      if (response.data['message'] != 'Authentication Passed') {
        return left(WirtualnyAuthException(
            loginData: loginData, message: response.data['message']));
      }

      if (response.data['user'] == null || response.data['token'] == null) {
        return left(WirtualnyAuthException(
            loginData: loginData,
            message:
                'Invalid response from server: Missing user or token data'));
      }

      final StudentLoginResponse studentLoginResponse =
          StudentLoginResponse.fromJson(response.data);

      _authData = studentLoginResponse;

      // Set the authorization header with the new token
      WirtualnyHttpClient.instance.dio.options.headers['Authorization'] =
          'Bearer ${studentLoginResponse.token}';

      // Notify listeners of the new auth state
      if (_authStateHasListeners) {
        _authStateController.add(studentLoginResponse.user);
      }

      // Save the token to local storage
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('authToken', studentLoginResponse.token);
      await prefs.setInt('studentId', studentLoginResponse.user.id);

      return right(studentLoginResponse.user);
    } on DioException catch (e) {
      if (e.response?.data['errors'] == null) {
        return left(
            WirtualnyAuthException(dioException: e, loginData: loginData));
      }

      ErrorsResponse errorsResponse = ErrorsResponse.fromJson(e.response!.data);

      if (errorsResponse.errors.isEmpty) {
        return left(
            WirtualnyAuthException(dioException: e, loginData: loginData));
      }

      if (errorsResponse.errors.first.message ==
          'The email or password provided is incorrect.') {
        return left(WirtualnyAuthException(
          dioException: e,
          code: 'invalid-credentials',
          loginData: loginData,
          message: errorsResponse.errors.first.message,
        ));
      }

      return left(WirtualnyAuthException(
        dioException: e,
        loginData: loginData,
        message: errorsResponse.errors.first.message,
      ));
    } catch (e, stackTrace) {
      log.severe('LOGIN FAILED', e, stackTrace);

      return left(WirtualnyAuthException(
        loginData: loginData,
        message: e.toString(),
      ));
    }
  }

  Future<Either<WirtualnyAuthException, ProfilePicture>> changeUserImage(
      {required File newImage}) async {
    if (_authData == null) {
      return left(WirtualnyAuthException(
        message: 'User is not authenticated',
      ));
    }

    if (_authData!.user.profilePicture == null) {
      return left(WirtualnyAuthException(
        message: 'User does not have a profile picture',
      ));
    }

    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(
          newImage.path,
          filename: 'profile_picture.jpg',
          contentType: MediaType('image', 'jpeg'),
        ),
      });

      final response = await WirtualnyHttpClient.instance.dio.patch(
        '/studentProfilePictures/${_authData!.user.profilePicture!.id}',
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${_authData!.token}',
          },
        ),
      );

      StudentProfilePictureUpdatedResponse
          studentProfilePictureUpdatedResponse =
          StudentProfilePictureUpdatedResponse.fromJson(response.data);

      ProfilePicture profilePicture = studentProfilePictureUpdatedResponse.doc;

      _authData = _authData!.copyWith(
        user: _authData!.user.copyWith(
          profilePicture: profilePicture,
        ),
      );

      if (_authStateHasListeners) {
        _authStateController.add(_authData!.user);
      }

      return right(profilePicture);
    } on DioException catch (e) {
      if (e.response?.data['errors'] == null) {
        return left(WirtualnyAuthException(dioException: e));
      }

      ErrorsResponse errorsResponse = ErrorsResponse.fromJson(e.response!.data);

      if (errorsResponse.errors.isEmpty) {
        return left(WirtualnyAuthException(dioException: e));
      }

      return left(WirtualnyAuthException(
        dioException: e,
        message: errorsResponse.errors.first.message,
      ));
    } catch (e, stackTrace) {
      log.severe('IMAGE_CHANGE FAILED', e, stackTrace);

      return left(WirtualnyAuthException(
        message: e.toString(),
      ));
    }
  }
}
