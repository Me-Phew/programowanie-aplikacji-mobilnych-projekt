/// @file styled_button.dart
/// @brief Definicje stylizowanych przycisków używanych w aplikacji.
/// @version 1.0
/// @date 2025-01-11
///
/// @author Marcin Dudek
/// @author Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;

  /// @brief Konstruktor widgetu StyledButton.
  /// @param onPressed Funkcja wywoływana po naciśnięciu przycisku.
  /// @param child Widget dziecka wyświetlany wewnątrz przycisku.
  const StyledButton({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.all(18.0),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
        onPressed: onPressed,
        child: child);
  }
}

class StyledButtonText extends StatelessWidget {
  final String text;

  /// @brief Konstruktor widgetu StyledButtonText.
  /// @param text Tekst wyświetlany wewnątrz przycisku.
  const StyledButtonText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.8,
          ),
        ));
  }
}

class StyledButtonSettings extends StatelessWidget {
  final Function() onTap;

  /// @brief Konstruktor widgetu StyledButtonSettings.
  /// @param onTap Funkcja wywoływana po naciśnięciu przycisku.
  const StyledButtonSettings({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.transparent,
            //color: Colors.black,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(Icons.chevron_right_rounded),
          //child: Icon(Icons.chevron_right_rounded,color: Colors.white),
        ));
  }
}
