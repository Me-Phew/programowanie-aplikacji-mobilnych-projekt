/// @file push_notifications.dart
/// @brief Obsługa powiadomień push za pomocą Firebase.
/// @version 1.0
/// @date 2025-01-11
///
/// @author Marcin Dudek
/// @author Mateusz Basiaga
/// @copyright Copyright (c) 2025
library;

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_sdk.dart';

class FirebaseApi {
  // Stworzenie instancji dla "FirebaseMessaging"
  static final _firebaseMessaging = FirebaseMessaging.instance;

  /// @brief Inicjalizuje powiadomienia push.
  static Future<void> initNotifications() async {
    // Zapytania o zgodę użytkownika
    await _firebaseMessaging.requestPermission();

    // FCM token dla urządzenia (Każde urządznie ma osobny token)
    final fcmToken = await _firebaseMessaging.getToken();

    print('Token:  $fcmToken');

    if (fcmToken == null) return;

    WirtualnySdk.instance.notifications.addFCMToken(fcmToken: fcmToken);
  }

  /// @brief Obsługuje wiadomość push.
  /// @param message Wiadomość push.
  static void handleMessage(RemoteMessage? message) {
    // jeżeli message jest równa 0 to nie rób nic
    if (message == null) return;

    // nawigacaj do nowego okna po wciśnieciu przez użytkowniak okienka
  }

  /// @brief Inicjalizuje powiadomienia push.
  static Future initPushNotifications() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
