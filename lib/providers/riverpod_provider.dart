/**
 * @file riverpod_provider.dart
 * @brief Plik dostarczający providerów Riverpod
 * @version 1.0
 * @date 2025-01-11
 * 
 * @autor Marcin Dudek
 * @autor Mateusz Basiaga
 * @copyright Copyright (c) 2025
 */

import 'package:flutter/material.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/**
 * @brief Provider trybu ciemnego
 * 
 * Dostarcza stan trybu ciemnego aplikacji.
 */
final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>((ref) {
  return DarkModeNotifier();
});

/**
 * @class DarkModeNotifier
 * @brief Notifier dla trybu ciemnego
 * 
 * Zarządza stanem trybu ciemnego aplikacji.
 */
class DarkModeNotifier extends StateNotifier<bool> {
  DarkModeNotifier() : super(false) {
    _loadDarkMode();
  }

  /**
   * @brief Ładuje stan trybu ciemnego z pamięci
   */
  Future<void> _loadDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getBool('isDarkMode') ?? false;
  }

  /**
   * @brief Przełącza tryb ciemny
   * 
   * @param isDarkMode Nowy stan trybu ciemnego
   */
  Future<void> toggleDarkMode(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    state = isDarkMode;
    await prefs.setBool('isDarkMode', isDarkMode);
  }
}

// Język
/**
 * @brief Provider języka
 * 
 * Dostarcza stan wybranego języka aplikacji.
 */
final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});

/**
 * @class LocaleNotifier
 * @brief Notifier dla języka
 * 
 * Zarządza stanem wybranego języka aplikacji.
 */
class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier() : super(const Locale('pl')) {
    _loadSavedLocale();
  }

  /**
   * @brief Ładuje zapisany język przy starcie
   */
  Future<void> _loadSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final language = prefs.getString('selectedLanguage') ?? 'Polish';
    changeLocale(language);
  }

  /**
   * @brief Zmienia język aplikacji
   * 
   * @param language Nowy język
   */
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

/**
 * @brief Provider wybranego języka
 * 
 * Dostarcza stan wybranego języka aplikacji.
 */
final selectedLanguageProvider =
    StateNotifierProvider<SelectedLanguageNotifier, String>((ref) {
  return SelectedLanguageNotifier();
});

/**
 * @class SelectedLanguageNotifier
 * @brief Notifier dla wybranego języka
 * 
 * Zarządza stanem wybranego języka aplikacji.
 */
class SelectedLanguageNotifier extends StateNotifier<String> {
  SelectedLanguageNotifier() : super('Polish') {
    _loadSavedLanguage();
  }

  /**
   * @brief Ładuje zapisany język przy starcie
   */
  Future<void> _loadSavedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getString('selectedLanguage') ?? 'Polish';
  }

  /**
   * @brief Ustawia nowy język
   * 
   * @param language Nowy język
   */
  Future<void> setLanguage(String language) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedLanguage', language);
    state = language;
  }
}

// Powiadomienia
/**
 * @brief Provider stanu powiadomień
 * 
 * Dostarcza stan włączenia powiadomień.
 */
final notificationsEnabledProvider =
    StateNotifierProvider<NotificationsNotifier, bool>((ref) {
  return NotificationsNotifier();
});

/**
 * @class NotificationsNotifier
 * @brief Notifier dla powiadomień
 * 
 * Zarządza stanem włączenia powiadomień.
 */
class NotificationsNotifier extends StateNotifier<bool> {
  NotificationsNotifier() : super(true) {
    _loadNotificationState();
  }

  /**
   * @brief Ładuje stan powiadomień z pamięci
   */
  Future<void> _loadNotificationState() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getBool('notificationsEnabled') ?? true;
  }

  /**
   * @brief Przełącza stan powiadomień
   * 
   * @param enabled Nowy stan powiadomień
   */
  Future<void> toggleNotifications(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    state = enabled;
    await prefs.setBool('notificationsEnabled', enabled);
  }
}

/**
 * @brief Provider stanu biometrii
 * 
 * Dostarcza stan włączenia biometrii.
 */
final biometricsEnabledProvider =
    StateNotifierProvider<BiometricsNotifier, bool>((ref) {
  return BiometricsNotifier();
});

/**
 * @class BiometricsNotifier
 * @brief Notifier dla biometrii
 * 
 * Zarządza stanem włączenia biometrii.
 */
class BiometricsNotifier extends StateNotifier<bool> {
  BiometricsNotifier() : super(false) {
    _loadSavedPreference();
  }

  /**
   * @brief Ładuje stan biometrii z pamięci
   */
  Future<void> _loadSavedPreference() async {
    final prefs = await SharedPreferences.getInstance();
    state = prefs.getBool('useBiometrics') ?? false;
  }

  /**
   * @brief Przełącza stan biometrii
   * 
   * @param value Nowy stan biometrii
   */
  void toggleBiometrics(bool value) {
    state = value;
  }
}

/**
 * @brief Provider stanu studenta
 * 
 * Dostarcza stan zalogowanego studenta.
 */
final studentProvider = StateNotifierProvider<StudentNotifier, Student?>((ref) {
  return StudentNotifier();
});

/**
 * @class StudentNotifier
 * @brief Notifier dla stanu studenta
 * 
 * Zarządza stanem zalogowanego studenta.
 */
class StudentNotifier extends StateNotifier<Student?> {
  StudentNotifier() : super(null);

  /**
   * @brief Aktualizuje stan studenta
   * 
   * @param student Nowy stan studenta
   */
  void updateStudent(Student student) {
    state = student;
  }
}

/**
 * @brief Provider klucza obrazu profilowego
 * 
 * Dostarcza klucz obrazu profilowego.
 */
final profileImageKeyProvider =
    StateProvider.autoDispose<ValueKey>((ref) => const ValueKey(0));

/**
 * @brief Provider obrazu profilowego
 * 
 * Dostarcza URL obrazu profilowego.
 */
final profilePictureProvider = StateProvider<String?>((ref) => null);
