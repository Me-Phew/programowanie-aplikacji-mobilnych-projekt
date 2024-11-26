import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'student_login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadAsyncState();
    });
  }

  _loadAsyncState() async {
    final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();

    final bool? hasLoggedInBefore =
        await asyncPrefs.getBool('hasLoggedInBefore');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 125.0),

                  Image.asset("assets/images/logoWithoutBg.png", width: 250),
                  StyledHeading(AppLocalizations.of(context)!.welcome),
                  // Sign in screen
                  const StudentLoginForm()
                ])),
      ),
    );
  }
}
