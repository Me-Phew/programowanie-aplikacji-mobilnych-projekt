import 'package:flutter_application/wirtualny-sdk/exceptions/wirtualny_dio_exception.dart';
import 'package:flutter_application/wirtualny-sdk/models/request-data/student_login_with_username_and_password_data.dart';
import 'package:meta/meta.dart';

class WirtualnyAuthException extends WirtualnyDioException
    implements Exception {
  @protected
  const WirtualnyAuthException(
      {super.message, super.code, super.dioException, this.loginData})
      : super(module: 'wirtualny_auth');

  final StudentLoginWithUsernameAndPasswordData? loginData;
}
