/// @file welcome_page.dart
/// @brief Ekran powitalny aplikacji z formularzem logowania.
/// @version 1.0
/// @date 2025-01-11
///
/// @author Marcin Dudek
/// @author Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'student_login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                  // Ekran logowania
                  StudentLoginForm()
                ])),
      ),
    );
  }
}
