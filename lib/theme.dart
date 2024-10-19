import 'package:flutter/material.dart';

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
  // Black Mode
  static OutlineInputBorder enabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.white),
    );
  }

  // White Mode
  static OutlineInputBorder enabledBorderW() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.black),
    );
  }

  static OutlineInputBorder focusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.white),
    );
  }

  // White Mode
  static OutlineInputBorder focusedBorderW() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.black),
    );
  }
}
