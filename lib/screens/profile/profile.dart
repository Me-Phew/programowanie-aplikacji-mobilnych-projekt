import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/models/app_user.dart';
import 'package:flutter_application/screens/shared/styled_button.dart';
import 'package:flutter_application/screens/shared/styled_text.dart';
import 'package:flutter_application/services/auth_service.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.user});

  final AppUser user;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentPageIndex = 0;

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
            const StyledHeading("Profile"),
            const SizedBox(
              height: 16.0,
            ),

            // output email
            StyledBodyText("Witaj, ${widget.user.email}"),
            const SizedBox(height: 15.0),

            StyledButton(
                onPressed: () {
                  AuthService.singOut();
                },
                child: const StyledButtonText("Wyloguj się")),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              backgroundColor: Colors.transparent,
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.black,
              gap: 8,
              onTabChange: (index) {
                print(index);
              },
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(icon: Icons.home, text: "Home"),
                GButton(icon: Icons.notifications, text: "Notifications"),
                GButton(icon: Icons.person, text: "Profile"),
                GButton(icon: Icons.settings, text: "Settings"),
              ]),
        ),
      ),
    );
  }
}
