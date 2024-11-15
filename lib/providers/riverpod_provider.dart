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


// Język
final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});

class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier() : super(const Locale('pl')) {
    _loadSavedLocale();
  }

  // Ładowanie zapisanego języka przy starcie
  Future<void> _loadSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final language = prefs.getString('selectedLanguage') ?? 'Polish';
    changeLocale(language);
  }

  Future<void> changeLocale(String language) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedLanguage', language);
    
    if (language == 'English') {
      state = const Locale('en');
    } else {
      state = const Locale('pl');
    }
  }
}


// Powiadomienia
final notificationsEnabledProvider = StateNotifierProvider<NotificationsNotifier, bool>((ref) {
  return NotificationsNotifier();
});

class NotificationsNotifier extends StateNotifier<bool> {
  NotificationsNotifier() : super(true);

  void toggle() {
    state = !state;
  }

  void pauseNotifications(Duration duration) {
    state = false;
    Future.delayed(duration, () {
      state = true;
    });
  }
}