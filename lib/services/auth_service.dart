import 'dart:async';
import 'dart:convert';

import 'package:flutter_application/wirtualny-sdk/models/responses/student_login_response.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_application/wirtualny-sdk/models/request-data/login_data.dart';

class AuthService {
  static final _controller =
      StreamController<StudentLoginResponse?>.broadcast();
  static final WirtualnySdk _wirtualnySdk = WirtualnySdk();

  static StudentLoginResponse? parseLoginResponse(String jsonString) {
    try {
      final Map<String, dynamic> json = jsonDecode(jsonString);
      return StudentLoginResponse.fromJson(json);
    } catch (e) {
      print('Error parsing login response: $e');
      return null;
    }
  }

  static Stream<StudentLoginResponse?> authStateChanges() {
    return _controller.stream;
  }

  // Logowanie
  static Future<StudentLoginResponse?> studentLogin(
      StudentLoginData loginData) async {
    try {
      final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();

      // final UserCredential credential = await _firebaseAuth
      //     .signInWithEmailAndPassword(email: email, password: password);

      final studentResponse = await _wirtualnySdk.login(loginData);

      return studentResponse;
    } catch (e) {
      return null;
    }
  }

  // Wylogowanie
  static Future<void> signOut() async {
    // await _firebaseAuth.signOut();
  }
}
