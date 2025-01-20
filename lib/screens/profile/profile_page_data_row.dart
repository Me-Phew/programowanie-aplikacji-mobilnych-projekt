/// @file profile_page_data_row.dart
/// @brief Widget wyświetlający wiersz danych na stronie profilu.
/// @version 1.0
/// @date 2025-01-11
///
/// @autor Marcin Dudek
/// @autor Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';

class ProfilePageDataRow extends StatelessWidget {
  final String textLeft;
  final String textRight;

  /// @brief Konstruktor widgetu ProfilePageDataRow.
  /// @param textLeft Tekst wyświetlany po lewej stronie.
  /// @param textRight Tekst wyświetlany po prawej stronie.
  const ProfilePageDataRow(
      {super.key, required this.textLeft, required this.textRight});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ProfileTextLeft(
          textLeft,
        )),
        Expanded(
          child: ProfileTextRight(textRight),
        )
      ],
    );
  }
}
