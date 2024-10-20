import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application/models/app_user.dart';
import 'package:riverpod/riverpod.dart';

final authProvider = StreamProvider.autoDispose<AppUser?>((ref) async* {
  // utworzenie "stream provides" dla wartości (user/null)
  final Stream<AppUser?> userStream =
      FirebaseAuth.instance.authStateChanges().map((user) {
    if (user != null) {
      return AppUser(uid: user.uid, email: user.email!);
    }
    return null;
  });

  // YIELD tą wartość przy każdej zmianie
  await for (final user in userStream) {
    yield user;
  }
});
