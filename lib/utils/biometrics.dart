/// @file biometrics.dart
/// @brief Obsługa uwierzytelniania biometrycznego.
/// @version 1.0
/// @date 2025-01-11
///
/// @author Marcin Dudek
/// @author Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// @brief Uwierzytelnia użytkownika za pomocą biometrii.
/// @return Zwraca true, jeśli uwierzytelnianie zakończyło się sukcesem, w przeciwnym razie false.
Future<bool> authenticateWithBiometrics() async {
  final LocalAuthentication localAuth = LocalAuthentication();

  try {
    final bool canAuthenticateWithBiometrics =
        await localAuth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await localAuth.isDeviceSupported();

    if (!canAuthenticate) {
      return true; // Jeśli urządzenie nie obsługuje biometrii, kontynuuj mimo to
    }

    final prefs = await SharedPreferences.getInstance();
    final useBiometrics = prefs.getBool('useBiometrics') ?? false;

    if (!useBiometrics) {
      return true; // Jeśli biometryka nie jest włączona, kontynuuj mimo to
    }

    // Wyraźnie sprawdź wsparcie dla biometrii
    final List<BiometricType> availableBiometrics =
        await localAuth.getAvailableBiometrics();
    if (!availableBiometrics.contains(BiometricType.strong) &&
        !availableBiometrics.contains(BiometricType.weak)) {
      return true;
    }
    return await localAuth.authenticate(
      localizedReason: 'Proszę zweryfikować swoją tożsamość',
      options: const AuthenticationOptions(
        stickyAuth: true,
        useErrorDialogs: true,
      ),
    );
  } catch (e) {
    print('Error using biometrics: $e');
    return false;
  }
}
