import 'package:flutter/material.dart';
import 'package:flutter_application/models/app_user.dart';
import 'package:flutter_application/providers/firebase_provider.dart';
import 'package:flutter_application/providers/riverpod_provider.dart';
import 'package:flutter_application/utils/push_notifications.dart';
import 'package:flutter_application/screens/tabs/tabs_screen.dart';
import 'package:flutter_application/screens/welcome/welcome_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application/utils/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'utils/firebase_options.dart';

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

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);

    return MaterialApp(

      // Język
      locale: ref.watch(localeProvider),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('pl'),
      ],

      theme: isDarkMode ? darkTheme : lightTheme,
      home: Consumer(builder: (context, ref, child) {
        final AsyncValue<AppUser?> user = ref.watch(authProvider);
        return user.when(
            data: (value) {
              if (value == null) {
                return const WelcomeScreen();
              }
              return TabsScreen(user: value);
            },
            error: (error, _) => const Text("Error loading auth status ..."),
            loading: () => const Text("Loading"));
      }),
    );
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
