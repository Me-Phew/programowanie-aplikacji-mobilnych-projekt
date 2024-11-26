import 'package:flutter_application/models/app_user.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_application/wirtualny-sdk/models/request-data/sign_in_data.dart';

class AuthService {
  static final WirtualnySdk _wirtualnySdk = WirtualnySdk();

  // Logowanie
  static Future<AppUser?> studentLogin(StudentLoginData loginData) async {
    try {
      final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();

      // final UserCredential credential = await _firebaseAuth
      //     .signInWithEmailAndPassword(email: email, password: password);

      await _wirtualnySdk.login(loginData);

      // if (credential.user != null) {
      //   await asyncPrefs.setBool('hasLoggedInBefore', true);

      //   return AppUser(
      //     uid: credential.user!.uid,
      //     email: credential.user!.email!,
      //   );
      // }
      return null;
    } catch (e) {
      return null;
    }
  }

  // Wylogowanie
  static Future<void> signOut() async {
    // await _firebaseAuth.signOut();
  }
}
