/// @file theme.dart
/// @brief Definicje motywów aplikacji oraz niestandardowych obramowań pól tekstowych.
/// @version 1.0
/// @date 2025-01-11
///
/// @author Marcin Dudek
/// @author Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black12,
);

/*
class AppColors{
  static Color primaryColor = const Color.fromRGBO();
  static Color primaryAccent = const Color.fromRGBO();
  static Color secondaryColor = const Color.fromRGBO();
  static Color secondaryAccent = const Color.fromRGBO();
  static Color titleColor = const Color.fromRGBO();
  static Color textColor = const Color.fromRGBO();
  static Color successColor = const Color.fromRGBO();
  static Color highlightColor = const Color.fromRGBO();
}
*/

class CustomInputBorders {
  /// @brief Zwraca obramowanie pola tekstowego dla błędów.
  /// @return Obramowanie pola tekstowego.
  static OutlineInputBorder errorBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red));
  }

  // Dark Mode
  /// @brief Zwraca obramowanie pola tekstowego dla trybu ciemnego, gdy pole jest aktywne.
  /// @return Obramowanie pola tekstowego.
  static OutlineInputBorder enabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }

  /// @brief Zwraca obramowanie pola tekstowego dla trybu ciemnego, gdy pole jest w fokusie.
  /// @return Obramowanie pola tekstowego.
  static OutlineInputBorder focusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }

  // Light Mode
  /// @brief Zwraca obramowanie pola tekstowego dla trybu jasnego, gdy pole jest aktywne.
  /// @return Obramowanie pola tekstowego.
  static OutlineInputBorder enabledBorderW() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.black),
    );
  }

  /// @brief Zwraca obramowanie pola tekstowego dla trybu jasnego, gdy pole jest w fokusie.
  /// @return Obramowanie pola tekstowego.
  static OutlineInputBorder focusedBorderW() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.black),
    );
  }
}
