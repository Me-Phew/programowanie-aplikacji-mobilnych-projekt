import 'package:flutter_application/services/auth_service.dart';
import 'package:riverpod/riverpod.dart';

final darkModeProvider = StateProvider<bool>((ref) => false);

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});

final signOutProvider = FutureProvider<void>((ref) async {
  final authService = ref.read(authServiceProvider);
  await AuthService.singOut();
});
