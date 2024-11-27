import 'package:riverpod/riverpod.dart';
import 'package:flutter_application/services/auth_service.dart';
import 'package:flutter_application/wirtualny-sdk/models/responses/student_login_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

final authProvider =
    StreamProvider.autoDispose<StudentLoginResponse?>((ref) async* {
  final asyncPrefs = SharedPreferencesAsync();

  final Stream<StudentLoginResponse?> userStream =
      AuthService.authStateChanges().map((user) {
    if (user != null) {
      // Return a valid StudentLoginResponse when the user is not null
      return user;
    }
    return null;
  });

  await for (final user in userStream) {
    yield user;
  }
});
