/**
 * @file auth_state_provider.dart
 * @brief Plik dostarczający providera stanu autoryzacji
 * @version 1.0
 * @date 2025-01-11
 * 
 * @autor Marcin Dudek
 * @autor Mateusz Basiaga
 * @copyright Copyright (c) 2025
 */

import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/**
 * @brief Provider stanu autoryzacji
 * 
 * Dostarcza strumień zmian stanu autoryzacji użytkownika.
 */
final authStateProvider = StreamProvider.autoDispose<Student?>((ref) async* {
  final Stream<Student?> studentStream =
      WirtualnySdk.instance.auth.authStateChanges().map((student) {
    if (student != null) {
      return student;
    }

    return null;
  });

  await for (final student in studentStream) {
    yield student;
  }
});
