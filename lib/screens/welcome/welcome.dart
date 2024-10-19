import 'package:flutter/material.dart';
import 'package:flutter_application/screens/shared/styled_text.dart';
import 'package:flutter_application/screens/welcome/sign_in.dart';
import 'package:flutter_application/screens/welcome/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isSignUpForm = true;

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
                  const StyledHeading('Witaj'),

                  // Sign up screen
                  if (isSignUpForm)
                    Column(
                      children: [
                        const SignUpForm(),
                        const StyledBodyText("Posiadasz już konto?"),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isSignUpForm = false;
                            });
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black),
                          child: Text("Zaloguj się",
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
                        const StyledBodyText("Potrzebujesz konta?"),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isSignUpForm = true;
                            });
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black),
                          child: Text("Zajerestruj się",
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
