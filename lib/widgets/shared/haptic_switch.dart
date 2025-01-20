/// @file haptic_switch.dart
/// @brief Przełącznik z haptycznym sprzężeniem zwrotnym.
/// @version 1.0
/// @date 2025-01-11
///
/// @autor Marcin Dudek
/// @autor Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HapticSwitch extends StatelessWidget {
  final bool value;
  final Function(bool)? onChanged;

  /// @brief Konstruktor widgetu HapticSwitch.
  /// @param value Aktualna wartość przełącznika.
  /// @param onChanged Funkcja wywoływana po zmianie wartości przełącznika.
  const HapticSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      activeColor: Colors.blueAccent,
      onChanged: (value) => {
        if (value)
          {
            HapticFeedback.mediumImpact(),
          }
        else
          {
            HapticFeedback.lightImpact(),
          },
        if (onChanged != null) onChanged!(value),
      },
    );
  }
}
