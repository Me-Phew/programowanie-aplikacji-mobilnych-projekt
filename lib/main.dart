import 'package:flutter/material.dart';
import 'package:flutter_application/providers/auth_state_provider.dart';
import 'package:flutter_application/providers/riverpod_provider.dart';
import 'package:flutter_application/screens/tabs/tabs_screen.dart';
import 'package:flutter_application/screens/welcome/welcome_page.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application/utils/theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'utils/firebase_options.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'wirtualny-sdk/wirtualny_sdk_config.dart';

void main() async {
  await dotenv.load();

  final env = dotenv.env['ENV'];

  if (env == "dev") {
    Logger.root.level = Level.ALL;
  }

  Logger.root.onRecord.listen((record) {
    // ignore: avoid_print
    print('${record.level.name}: ${record.time}: ${record.message}');
    // ignore: avoid_print
    print(record.error);
    // ignore: avoid_print
    print(record.stackTrace);
  });

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  initializeDateFormatting()
      .then((_) => runApp(const ProviderScope(child: MyApp())));

  final restApiBaseUrl = dotenv.env['REST_API_BASE_URL'];

  if (restApiBaseUrl == null) {
    throw Exception("REST_API_BASE_URL is not set");
  }

  WirtualnySdk.initialize(
      config: WirtualnySdkConfig(
    restApiBaseUrl: restApiBaseUrl,
  ));

  WirtualnySdk.instance.auth.loadToken();
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
        final AsyncValue<Student?> student = ref.watch(authStateProvider);
        return student.when(
            data: (value) {
              if (value == null) {
                return const WelcomeScreen();
              }
              return TabsScreen(student: value);
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
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
        ),
        body: const Text("SandBox"));
  }
}
