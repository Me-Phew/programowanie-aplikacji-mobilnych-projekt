import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HapticSwitch extends StatelessWidget {
  const HapticSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final bool value;
  final Function(bool)? onChanged;

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
