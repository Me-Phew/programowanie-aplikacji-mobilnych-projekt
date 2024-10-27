import 'package:flutter/material.dart';
import 'package:flutter_application/models/app_user.dart';
import 'package:flutter_application/screens/shared/styled_button.dart';
import 'package:flutter_application/screens/shared/styled_text.dart';
import 'package:flutter_application/screens/shared/styled_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  final AppUser user;
  const SettingsPage({super.key, required this.user});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120),
              SettingsHeading("Konto"),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset("assets/images/Example.png",
                          width: 70, height: 70, fit: BoxFit.cover),
                    ),
                    const SizedBox(height: 20, width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SettingsText("${widget.user.email}"),
                        const SizedBox(height: 6),
          
                        // Tego studenta trzeba zmienic w przyszłości aby pobierano dane z api
                        const SettingsTextInside("Student")
                      ],
                    ),
                    const Spacer(),
                    StyledButtonSettings(onTap: () {})
                  ],
                ),
              ),
              const SizedBox(height: 40),
              SettingsHeading("Ustawienia"),
              const SizedBox(height: 20),
              SettingItem(
                title: "Język",
                value: "Polski",
                bgColor: Colors.orange.shade100,
                iconColor: Colors.orange,
                icon: Icons.public,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Powiadomienia",
                bgColor: Colors.blue.shade100,
                iconColor: Colors.blue,
                icon: Icons.notifications,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Pomoc",
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                icon: Icons.contact_support,
                onTap: () {},
              ),
              const SizedBox(height: 20),
               SettingSwitch(
                title: "Dark Mode",
                value: isDarkMode,
                bgColor: Colors.grey.shade300,
                iconColor: Colors.grey.shade800,
                icon: Icons.dark_mode,
                onTap: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
