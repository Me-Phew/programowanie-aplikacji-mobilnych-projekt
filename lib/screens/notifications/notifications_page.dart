import 'package:flutter/material.dart';
import 'package:flutter_application/screens/shared/styled_text.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StyledHeading("Ogłoszenia"),
    );
  }
}
