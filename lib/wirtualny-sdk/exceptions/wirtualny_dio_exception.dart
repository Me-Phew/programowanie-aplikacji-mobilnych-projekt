import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'wirtualny_exception.dart';

class WirtualnyDioException extends WirtualnyException implements Exception {
  @protected
  const WirtualnyDioException(
      {super.message, super.code, required super.module, this.dioException});

  final DioException? dioException;
}
