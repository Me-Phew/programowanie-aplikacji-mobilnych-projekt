import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screens/announcements/announcement_details_page.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';

class MessageHandler extends StatefulWidget {
  final Widget child;

  const MessageHandler({super.key, required this.child});

  @override
  State createState() => MessageHandlerState();
}

class MessageHandlerState extends State<MessageHandler> {
  late Widget child;

  void _onData(RemoteMessage? message) async {
    if (message == null) {
      print("onMessage: message is null");
      return;
    }

    print("onMessage: ${message.data}");

    String? messageType = message.data['type'];

    switch (messageType) {
      case 'announcement':
        final String announcementId = message.data['id'];

        final getAnnouncementResult = await WirtualnySdk.instance.notifications
            .getAnnouncement(announcementId);

        getAnnouncementResult.fold(
          (l) {
            print(l.message);
          },
          (r) {
            print(
                "Navigating to announcement details page with announcement: $r");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AnnouncementDetailsPage(
                          announcement: r,
                        )));
          },
        );

      default:
        return;
    }
  }

  @override
  void initState() {
    super.initState();
    child = widget.child;

    FirebaseMessaging.onMessage.listen(_onData);
    FirebaseMessaging.onMessageOpenedApp.listen(_onData);
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
