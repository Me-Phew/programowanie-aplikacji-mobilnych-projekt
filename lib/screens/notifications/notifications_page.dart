import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screens/shared/styled_text.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Wiadomosc z powiadomienia
    // final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;

    return Center(
      child: StyledHeading("Ogłoszenia"),
    );

    /*
          return Scaffold(
            body: Column(
              children: [
                
                Text(message.notification!.title.toString()),
                Text(message.notification!.body.toString()),
                Text(message.data.toString()),
                
              ],
            )
          );
        }
      }
      */
  }
}
