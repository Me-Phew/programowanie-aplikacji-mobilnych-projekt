import 'package:flutter/foundation.dart';

@immutable
class WirtualnyException implements Exception {
  const WirtualnyException({
    required this.module,
    this.message,
    String? code,
    this.stackTrace,
    // ignore: unnecessary_this
  }) : this.code = code ?? 'unknown';

  final String module;

  final String? message;

  final String code;

  final StackTrace? stackTrace;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! WirtualnyException) return false;
    return other.hashCode == hashCode;
  }

  @override
  int get hashCode => Object.hash(module, code, message);

  @override
  String toString() {
    String output = '[$module/$code] $message';

    if (stackTrace != null) {
      output += '\n\n$stackTrace';
    }

    return output;
  }
}
