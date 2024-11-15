import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application/services/auth_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>((ref) {
  return DarkModeNotifier();
});

class DarkModeNotifier extends StateNotifier<bool> {
  DarkModeNotifier() : super(false) {
    _loadDarkMode();
  }

  Future<void> _loadDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getBool('isDarkMode') ?? false;
  }

  Future<void> toggleDarkMode(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    state = isDarkMode;
    await prefs.setBool('isDarkMode', isDarkMode);
  }
}

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});


final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});

class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier() : super(const Locale('pl'));

  void changeLocale(String language) {
    if (language == 'English') {
      state = const Locale('en');
    } else {
      state = const Locale('pl'); 
    }
  }
}