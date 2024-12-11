import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';

class ProfilePageDataRow extends StatelessWidget {
  const ProfilePageDataRow(
      {super.key, required this.textLeft, required this.textRight});

  final String textLeft;
  final String textRight;

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
