/// @file student_login.dart
/// @brief Formularz logowania dla studentów.
/// @version 1.0
/// @date 2025-01-11
///
/// @autor Marcin Dudek
/// @autor Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:flutter_application/screens/home/home_page.dart';
import 'package:flutter_application/utils/push_notifications.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_application/widgets/shared/styled_form_field.dart';
import 'package:flutter_application/widgets/shared/password_input.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:flutter_application/wirtualny-sdk/models/request-data/student_login_with_username_and_password_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StudentLoginForm extends StatefulWidget {
  const StudentLoginForm({super.key});

  @override
  State<StudentLoginForm> createState() => _StudentLoginFormState();
}

class _StudentLoginFormState extends State<StudentLoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  String? _errorFeedback;

  /// @brief Obsługuje proces logowania studenta.
  void _handleLogin() async {
    if (!mounted) return;

    // Sprawdź najpierw walidację formularza
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Kontynuuj logowanie tylko, jeśli uwierzytelnianie biometryczne zakończyło się sukcesem
    setState(() {
      _isLoading = true;
      _errorFeedback = null;
    });

    final loginData = StudentLoginWithUsernameAndPasswordData(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );

    final loginResult = await WirtualnySdk.instance.auth
        .loginWithUsernameAndPassword(loginData);

    if (!mounted) {
      FirebaseApi.initNotifications();

      return;
    }

    loginResult.fold(
      (l) {
        switch (l.code) {
          case 'invalid-credentials':
            setState(() {
              _isLoading = false;
              _errorFeedback =
                  AppLocalizations.of(context)!.invalidLoginCredentials;
            });
            break;
          default:
            setState(() {
              _isLoading = false;
              _errorFeedback = AppLocalizations.of(context)!.generalLoginError;
            });
        }
      },
      (r) {
        setState(() {
          _isLoading = false;
        });

        FirebaseApi.initNotifications();

        // Przejdź do strony głównej po udanym logowaniu
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage(student: r)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Tekst logowania
            Center(
                child: StyledBodyText(AppLocalizations.of(context)!.loginAcc)),
            const SizedBox(height: 16.0),

            // Adres email
            StyledFormField(
              textEditingController: _emailController,
              label: Text(AppLocalizations.of(context)!.emailAddress),
              icon: Icons.person,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppLocalizations.of(context)!.emailAddressIsNeeded;
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),

            // Hasło
            PasswordInput(
              textEditingController: _passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return AppLocalizations.of(context)!.passwordIsNeeded;
                }
                return null;
              },
              label: Text(AppLocalizations.of(context)!.password),
              icon: Icons.lock,
            ),
            const SizedBox(height: 16.0),

            // Przycisk logowania
            FractionallySizedBox(
              widthFactor: 0.5,
              child: StyledButton(
                onPressed: _handleLogin,
                child: _isLoading
                    ? const SizedBox(
                        height: 25,
                        width: 25,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      )
                    : SizedBox(
                        height: 25,
                        child: Center(
                          child: StyledButtonText(
                              AppLocalizations.of(context)!.login),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 16.0),

            // Informacja o błędzie
            if (_errorFeedback != null)
              Center(
                child: Text(
                  _errorFeedback!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
