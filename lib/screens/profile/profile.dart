import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/models/app_user.dart';
import 'package:flutter_application/screens/home/home_page.dart';
import 'package:flutter_application/screens/notifications/notifications_page.dart';
import 'package:flutter_application/screens/profile/profile_page.dart';
import 'package:flutter_application/screens/settings/settings_page.dart';
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
  int _selectedIndex = 0;

  // Lista ekranów naszej aplikacji
  late final List<Widget> _pages = [
    HomePage(),
    NotificationsPage(),
    ProfilePage(user: widget.user),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
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
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home, text: "Panel główny"),
              GButton(icon: Icons.notifications, text: "Ogłoszenia"),
              GButton(icon: Icons.person, text: "Profil"),
              GButton(icon: Icons.settings, text: "Ustawienia"),
            ],

            // przypisujemy wartość wybranego indexa
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
