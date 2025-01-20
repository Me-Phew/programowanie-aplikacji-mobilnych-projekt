/// @file styled_text.dart
/// @brief Stylizowane teksty używane w aplikacji.
/// @version 1.0
/// @date 2025-01-11
///
/// @autor Marcin Dudek
/// @autor Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledBodyText extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu StyledBodyText.
  /// @param text Tekst do wyświetlenia.
  const StyledBodyText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.grey[800]),
        ));
  }
}

class StyledHeading extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu StyledHeading.
  /// @param text Tekst do wyświetlenia.
  const StyledHeading(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.black, fontSize: 32),
        ));
  }
}

class StyledAppBarText extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu StyledAppBarText.
  /// @param text Tekst do wyświetlenia.
  const StyledAppBarText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}

class StyledErrorText extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu StyledErrorText.
  /// @param text Tekst do wyświetlenia.
  const StyledErrorText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(color: Colors.red),
        ));
  }
}

class SettingsHeading extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu SettingsHeading.
  /// @param text Tekst do wyświetlenia.
  const SettingsHeading(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ));
  }
}

class SettingsText extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu SettingsText.
  /// @param text Tekst do wyświetlenia.
  const SettingsText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ));
  }
}

class SettingsTextInside extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu SettingsTextInside.
  /// @param text Tekst do wyświetlenia.
  const SettingsTextInside(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ));
  }
}

class ProfileTextLeft extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu ProfileTextLeft.
  /// @param text Tekst do wyświetlenia.
  const ProfileTextLeft(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }
}

class ProfileTextRight extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu ProfileTextRight.
  /// @param text Tekst do wyświetlenia.
  const ProfileTextRight(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(fontSize: 14, color: Colors.black),
      ),
    );
  }
}
