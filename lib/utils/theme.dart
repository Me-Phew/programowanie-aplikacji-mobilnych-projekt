import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  // Dodaj inne właściwości motywu
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.black12,
  // Dodaj inne właściwości motywu
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
  // Common
  static OutlineInputBorder errorBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red));
  }

  // Dark Mode
  static OutlineInputBorder enabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }

  static OutlineInputBorder focusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }

  // Light Mode
  static OutlineInputBorder enabledBorderW() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.black),
    );
  }

  static OutlineInputBorder focusedBorderW() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.black),
    );
  }
}
