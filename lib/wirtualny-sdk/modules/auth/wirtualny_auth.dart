import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_application/wirtualny-sdk/models/request-data/student_login_with_username_and_password_data.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/errors_response/errors_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/student_login_response/student_login_response.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/modules/auth/wirtualny_auth_exception.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_http_client.dart';
import 'package:fpdart/fpdart.dart';

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
  }

  bool get _authStateHasListeners => authStateListenersCount > 0;

  Stream<Student?> authStateChanges() {
    return _authStateController.stream;
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
        return left(WirtualnyAuthException(loginData: loginData));
      }

      final StudentLoginResponse studentLoginResponse =
          StudentLoginResponse.fromJson(response.data);

      _authData = studentLoginResponse;

      if (_authStateHasListeners) {
        _authStateController.add(studentLoginResponse.user);
      }

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
    } on Exception catch (e) {
      return left(WirtualnyAuthException(
        loginData: loginData,
        message: e.toString(),
      ));
    }
  }
}
