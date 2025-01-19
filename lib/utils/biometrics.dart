import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> authenticateWithBiometrics() async {
  final LocalAuthentication localAuth = LocalAuthentication();

  try {
    final bool canAuthenticateWithBiometrics =
        await localAuth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await localAuth.isDeviceSupported();

    if (!canAuthenticate) {
      return true; // If device doesn't support biometrics, proceed anyway
    }

    final prefs = await SharedPreferences.getInstance();
    final useBiometrics = prefs.getBool('useBiometrics') ?? false;

    if (!useBiometrics) {
      return true; // If biometrics not enabled, proceed anyway
    }

    // Explicitly check for biometric support
    final List<BiometricType> availableBiometrics =
        await localAuth.getAvailableBiometrics();
    if (!availableBiometrics.contains(BiometricType.strong) &&
        !availableBiometrics.contains(BiometricType.weak)) {
      return true;
    }
    return await localAuth.authenticate(
      localizedReason: 'Proszę zweryfikować swoją tożsamość',
      options: const AuthenticationOptions(
        biometricOnly: true,
        stickyAuth: true,
        useErrorDialogs: true,
      ),
    );
  } catch (e) {
    print('Error using biometrics: $e');
    return false;
  }
}
