import 'package:flutter/material.dart';
import 'package:flutter_application/screens/shared/styled_button.dart';
import 'package:flutter_application/screens/shared/styled_text.dart';
import 'package:flutter_application/services/auth_service.dart';
import 'package:flutter_application/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Sing up text
            const Center(
                child:
                    StyledBodyText("Zajerestruj się aby utworzyć nowe konto.")),
            const SizedBox(height: 16.0),

            // email address
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.poppins(
                  color: Colors.black, fontSize: 16, letterSpacing: 1),

              //Kolor pikania jak czeka na literka np
              cursorColor: Colors.black,

              //Ikona i jej kolor
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: const Text("Email"),
                labelStyle: const TextStyle(color: Colors.black),

                // Bordery okna
                enabledBorder: CustomInputBorders.enabledBorderW(),
                focusedBorder: CustomInputBorders.focusedBorderW(),

                //Kolor w środku
                filled: true,
                fillColor: Colors.transparent,
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Proszę podaj swój Email";
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),

            // password
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              style: GoogleFonts.poppins(
                  color: Colors.black, fontSize: 16, letterSpacing: 1),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.black,
                ),

                label: const Text("Hasło"),
                labelStyle: const TextStyle(color: Colors.black),

                // Bordery okna
                enabledBorder: CustomInputBorders.enabledBorderW(),
                focusedBorder: CustomInputBorders.focusedBorderW(),

                filled: true,
                fillColor: Colors.transparent,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Proszę podaj swoje Hasło";
                }
                if (value.length < 8) {
                  return "Hasło musi mieć przynajmniej 8 znaków!";
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),

            // error feedback

            // sumbit button
            StyledButton(
              onPressed: () async {
                // Daje ! na końcu bo wiem że formKey nie będzie posiadać wartowści null
                if (_formKey.currentState!.validate()) {
                  // trim żeby pozbyć się pustej przestrzeni
                  final email = _emailController.text.trim();
                  final password = _passwordController.text.trim();

                  final user = await AuthService.signUp(email, password);

                  // error feedback
                }
                ;
              },
              child: const StyledButtonText("Zajerestruj się"),
            )
          ],
        ),
      ),
    );
  }
}
