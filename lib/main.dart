import 'package:flutter/material.dart';
import 'package:flutter_application/models/app_user.dart';
import 'package:flutter_application/providers/firebase_provider.dart';
import 'package:flutter_application/screens/notifications/push_notifications.dart';
import 'package:flutter_application/screens/profile/profile.dart';
import 'package:flutter_application/screens/welcome/welcome.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'firebase_options.dart';

import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Powiadomienia
  await FirebaseApi().initNotifications();

  initializeDateFormatting()
      .then((_) => runApp(const ProviderScope(child: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Consumer(builder: (context, ref, child) {
          final AsyncValue<AppUser?> user = ref.watch(authProvider);
          return user.when(
              data: (value) {
                if (value == null) {
                  return const WelcomeScreen();
                }
                return ProfileScreen(user: value);
              },
              error: (error, _) => const Text("Error loading auth status ..."),
              loading: () => const Text("Loading"));
        }));

  }
}

// Sandbox do testowania żeby nie rozwalać kody już w apce itp.
class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SandBox"),
          backgroundColor: Colors.grey,
        ),
        body: const Text("SandBox"));
  }
}
