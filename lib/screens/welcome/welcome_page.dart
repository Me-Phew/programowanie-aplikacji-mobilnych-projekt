import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:flutter_application/screens/welcome/sign_in.dart';
import 'package:flutter_application/screens/welcome/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  bool isSignUpForm = false;

  _loadAsyncState() async {
    final SharedPreferencesAsync asyncPrefs = SharedPreferencesAsync();

    final bool? hasLoggedInBefore =
        await asyncPrefs.getBool('hasLoggedInBefore');

    setState(() {
      isSignUpForm = (hasLoggedInBefore == null) ? true : !hasLoggedInBefore;
    });
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

                  // Sign up screen
                  if (isSignUpForm)
                    Column(
                      children: [
                        const SignUpForm(),
                        StyledBodyText(AppLocalizations.of(context)!.haveAcc),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isSignUpForm = false;
                            });
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black),
                          child: Text(AppLocalizations.of(context)!.login,
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),

                  // Sign in screen
                  if (!isSignUpForm)
                    Column(
                      children: [
                        const SignInForm(),
                        StyledBodyText(AppLocalizations.of(context)!.needAcc),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isSignUpForm = true;
                            });
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black),
                          child: Text(AppLocalizations.of(context)!.register,
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                ])),
      ),
    );
  }
}
