import 'package:flutter/material.dart';
import 'package:flutter_application/screens/shared/haptic_switch.dart';
import 'package:flutter_application/screens/shared/styled_button.dart';
import 'package:flutter_application/screens/shared/styled_text.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final String? value;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final Function() onTap;

  const SettingItem(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.iconColor,
      required this.icon,
      required this.onTap,
      this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 20),
          SettingsText(title),
          const Spacer(),
          value != null ? SettingsTextInside(value!) : const SizedBox(),
          const SizedBox(width: 20),
          StyledButtonSettings(onTap: onTap),
        ],
      ),
    );
  }
}

class SettingSwitch extends StatelessWidget {
  final String title;
  final bool value;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final Function(bool value) onTap;
  const SettingSwitch(
      {super.key,
      required this.title,
      required this.value,
      required this.bgColor,
      required this.iconColor,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 20),
          SettingsText(title),
          const Spacer(),
          SettingsTextInside(value ? "On" : "Off"),
          const SizedBox(width: 20),
          // CupertinoSwitch(value: value, onChanged: onTap),
          HapticSwitch(
            value: value,
            onChanged: onTap,
          ),
        ],
      ),
    );
  }
}

class EditItem extends StatelessWidget {
  final Widget widget;
  final String title;

  const EditItem({super.key, required this.widget, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 16, color: Colors.grey)),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          flex: 3,
          child: widget,
        ),
      ],
    );
  }
}
