import 'package:flutter/material.dart';
import 'package:flutter_application/screens/home/home_page.dart';
import 'package:flutter_application/screens/messages/messages_page.dart';
import 'package:flutter_application/screens/notifications/notifications_page.dart';
import 'package:flutter_application/screens/settings/settings_page.dart';
import 'package:flutter_application/wirtualny-sdk/models/student/student.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key, required this.student});

  final Student student;

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  // Lista ekranów naszej aplikacji
  late final List<Widget> _pages = [
    HomePage(),
    NotificationsPage(),
    MessagesPage(),
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
                  icon: Icons.notifications,
                  text: AppLocalizations.of(context)!.notifications),
              GButton(
                  icon: Icons.mail,
                  text: AppLocalizations.of(context)!.messages),
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
