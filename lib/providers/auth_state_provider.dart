import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
