import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/shared/styled_text.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StyledHeading("Wiadomości"),
    );
  }
}
