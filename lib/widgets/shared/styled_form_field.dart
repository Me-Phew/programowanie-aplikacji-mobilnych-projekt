/// @file styled_form_field.dart
/// @brief Stylizowane pole formularza używane w aplikacji.
/// @version 1.0
/// @date 2025-01-11
///
/// @autor Marcin Dudek
/// @autor Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application/utils/theme.dart';

class StyledFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final FormFieldValidator<String?> validator;
  final Widget label;
  final IconData icon;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;

  /// @brief Konstruktor widgetu StyledFormField.
  /// @param textEditingController Kontroler tekstu dla pola formularza.
  /// @param validator Funkcja walidująca dla pola formularza.
  /// @param label Etykieta pola formularza.
  /// @param icon Ikona dla pola formularza.
  /// @param obscureText Flaga określająca, czy tekst ma być ukryty.
  /// @param suffixIcon Ikona wyświetlana po prawej stronie pola formularza.
  /// @param keyboardType Typ klawiatury dla pola formularza.
  /// @param autofillHints Wskazówki do automatycznego wypełniania.
  const StyledFormField({
    super.key,
    required this.textEditingController,
    required this.validator,
    required this.label,
    required this.icon,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.autofillHints,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autofillHints: autofillHints,
      style: GoogleFonts.poppins(
          color: Colors.black, fontSize: 16, letterSpacing: 1),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),

        label: label,
        labelStyle: const TextStyle(color: Colors.black),

        // Bordery inputa
        enabledBorder: CustomInputBorders.enabledBorderW(),
        focusedBorder: CustomInputBorders.focusedBorderW(),
        errorBorder: CustomInputBorders.errorBorder(),
        focusedErrorBorder: CustomInputBorders.errorBorder(),

        filled: false,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
