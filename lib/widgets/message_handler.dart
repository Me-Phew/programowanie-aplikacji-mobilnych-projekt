import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class MessageHandler extends StatefulWidget {
  final Widget child;

  const MessageHandler({super.key, required this.child});

  @override
  State createState() => MessageHandlerState();
}

void _onData(RemoteMessage? message) {
  if (message == null) return;

  print("onMessage: ${message.data}");

  // String screen = message['data']['screen'];
  // if (screen == "secondScreen") {
  //   Navigator.of(context).pushNamed("secondScreen");
  // } else if (screen == "thirdScreen") {
  //   Navigator.of(context).pushNamed("thirdScreen");
  // } else {
  //   //do nothing
  // }
}

class MessageHandlerState extends State<MessageHandler> {
  late Widget child;

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
