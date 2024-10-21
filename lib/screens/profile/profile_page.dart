import 'package:flutter/material.dart';
import 'package:flutter_application/models/app_user.dart';
import 'package:flutter_application/screens/shared/styled_button.dart';
import 'package:flutter_application/screens/shared/styled_text.dart';
import 'package:flutter_application/services/auth_service.dart';

class ProfilePage extends StatelessWidget {
  final AppUser user;
  const ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StyledHeading("Profil użytkownika"),
            const SizedBox(
              height: 16.0,
            ),

            // output email
            StyledBodyText("Witaj, ${user.email}"),
            const SizedBox(height: 15.0),

            StyledButton(
                onPressed: () {
                  AuthService.singOut();
                },
                child: const StyledButtonText("Wyloguj się")),
          ],
        ),
      ),
    );
  }
}
