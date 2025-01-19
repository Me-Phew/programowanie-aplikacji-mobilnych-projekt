import 'package:flutter_application/wirtualny-sdk/exceptions/wirtualny_dio_exception.dart';
import 'package:meta/meta.dart';

class WirtualnyNotificationsException extends WirtualnyDioException
    implements Exception {
  @protected
  const WirtualnyNotificationsException(
      {super.message, super.code, super.dioException})
      : super(module: 'wirtualny_notifications');
}
