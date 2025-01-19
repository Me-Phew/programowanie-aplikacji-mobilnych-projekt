/**
 * @file styled_widgets.dart
 * @brief Stylizowane widgety używane w aplikacji.
 * @version 1.0
 * @date 2025-01-11
 * 
 * @autor Marcin Dudek
 * @autor Mateusz Basiaga
 * @copyright Copyright (c) 2025
 */

import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/shared/haptic_switch.dart';
import 'package:flutter_application/widgets/shared/styled_button.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final String? value;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final Function() onTap;

  /**
   * @brief Konstruktor widgetu SettingItem.
   * @param title Tytuł ustawienia.
   * @param value Wartość ustawienia.
   * @param bgColor Kolor tła ikony.
   * @param iconColor Kolor ikony.
   * @param icon Ikona ustawienia.
   * @param onTap Funkcja wywoływana po naciśnięciu ustawienia.
   */
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

  /**
   * @brief Konstruktor widgetu SettingSwitch.
   * @param title Tytuł ustawienia.
   * @param value Wartość ustawienia (włączone/wyłączone).
   * @param bgColor Kolor tła ikony.
   * @param iconColor Kolor ikony.
   * @param icon Ikona ustawienia.
   * @param onTap Funkcja wywoływana po zmianie wartości ustawienia.
   */
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

  /**
   * @brief Konstruktor widgetu EditItem.
   * @param widget Widget wyświetlany po prawej stronie.
   * @param title Tytuł ustawienia.
   */
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
