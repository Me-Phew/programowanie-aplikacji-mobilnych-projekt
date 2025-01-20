/// @file tabs_screen.dart
/// @brief Ekran z zakładkami nawigacyjnymi aplikacji.
/// @version 1.0
/// @date 2025-01-11
///
/// @autor Marcin Dudek
/// @autor Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:flutter_application/screens/home/home_page.dart';
import 'package:flutter_application/screens/subjects/subject_page.dart';
import 'package:flutter_application/screens/announcements/announcements_page.dart';
import 'package:flutter_application/screens/settings/settings_page.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TabsScreen extends StatefulWidget {
  final Student student;

  /// @brief Konstruktor widgetu TabsScreen.
  /// @param student Obiekt studenta zawierający dane do wyświetlenia.
  const TabsScreen({super.key, required this.student});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  // Lista ekranów naszej aplikacji
  late final List<Widget> _pages = [
    HomePage(
      student: widget.student,
    ),
    GradesPage(),
    AnnouncementsPage(),
    SettingsPage(student: widget.student),
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
            tabs: [
              GButton(
                  icon: Icons.home,
                  text: AppLocalizations.of(context)!.mainPanel),
              GButton(
                  icon: Icons.history_edu,
                  text: AppLocalizations.of(context)!.subjects),
              GButton(
                  icon: Icons.notifications,
                  text: AppLocalizations.of(context)!.announcements),
              GButton(
                  icon: Icons.settings,
                  text: AppLocalizations.of(context)!.settings),
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
