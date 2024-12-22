import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_application/wirtualny-sdk/models/request-data/student_login_with_username_and_password_data.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/errors_response/errors_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/student_login_response/student_login_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/modules/auth/wirtualny_auth_exception.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_http_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WirtualnyAuth {
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
    // Load the token from local storage and set the Authorization header
    _loadToken();
  }

  Future<void> _loadToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('authToken');
    if (token != null) {
      WirtualnyHttpClient.instance.dio.options.headers['Authorization'] =
          'Bearer $token';
      // Optionally, fetch and set the user data
    }
  }

  bool get _authStateHasListeners => authStateListenersCount > 0;

  Stream<Student?> authStateChanges() {
    return _authStateController.stream;
  }

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
        'students/login',
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
    } catch (e) {
      return left(WirtualnyAuthException(
        loginData: loginData,
        message: e.toString(),
      ));
    }
  }
}
