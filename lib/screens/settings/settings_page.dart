import 'package:flutter/material.dart';
import 'package:flutter_application/screens/shared/styled_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StyledHeading("Ustawienia"),
    );
  }
}
