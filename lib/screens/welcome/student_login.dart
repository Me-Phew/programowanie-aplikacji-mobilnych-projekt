import 'package:flutter/material.dart';
import 'package:flutter_application/screens/home/home_page.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_application/widgets/shared/styled_form_field.dart';
import 'package:flutter_application/widgets/shared/password_input.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';
import 'package:flutter_application/wirtualny-sdk/models/request-data/student_login_with_username_and_password_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentLoginForm extends StatefulWidget {
  @override
  _StudentLoginFormState createState() => _StudentLoginFormState();
}

class _StudentLoginFormState extends State<StudentLoginForm> {
  final LocalAuthentication _localAuth = LocalAuthentication();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  String? _errorFeedback;

  Future<bool> _authenticateWithBiometrics() async {
    try {
      final bool canAuthenticateWithBiometrics =
          await _localAuth.canCheckBiometrics;
      final bool canAuthenticate =
          canAuthenticateWithBiometrics || await _localAuth.isDeviceSupported();

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
          await _localAuth.getAvailableBiometrics();
      if (!availableBiometrics.contains(BiometricType.strong) &&
          !availableBiometrics.contains(BiometricType.weak)) {
        return true;
      }
      return await _localAuth.authenticate(
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

  void _handleLogin() async {
    if (!mounted) return;

    // Check form validation first
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Authenticate with biometrics before proceeding with login
    final authenticated = await _authenticateWithBiometrics();
    if (!authenticated) {
      if (!mounted) return;
      setState(() {
        _errorFeedback = AppLocalizations.of(context)!.generalLoginError;
      });
      return;
    }

    // Only proceed with login if biometric authentication was successful
    setState(() {
      _isLoading = true;
      _errorFeedback = null;
    });

    final loginData = StudentLoginWithUsernameAndPasswordData(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );

    final loginResult = await WirtualnySdk.instance.auth.loginWithUsernameAndPassword(loginData);

    if (!mounted) return;

    loginResult.fold(
      (l) {
        switch (l.code) {
          case 'invalid-credentials':
            setState(() {
              _isLoading = false;
              _errorFeedback = AppLocalizations.of(context)!.invalidLoginCredentials;
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
        
        // Navigate to home page on successful login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
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
            // Sign up text
            Center(
                child: StyledBodyText(AppLocalizations.of(context)!.loginAcc)),
            const SizedBox(height: 16.0),

            // Email address
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

            // Password
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

            // Submit button
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

            // Error feedback
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
