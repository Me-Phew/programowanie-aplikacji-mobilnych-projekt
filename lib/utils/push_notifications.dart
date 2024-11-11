import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  // Stworzenie instancji dla "FirebaseMessaging"
  final _firebaseMessaging = FirebaseMessaging.instance;

  // Funkcja odpowiedzialna za dawanie notyfikacji
  Future<void> initNotifications() async {
    // Zapytania o zgodę użytkownika
    await _firebaseMessaging.requestPermission();

    // FOM token dla urządzenia (Każde urządznie ma osobny token)
    final fOMToken = await _firebaseMessaging.getToken();

    // dla testu print tego tokenu ale w przysłości trzeba wysłać tokena do serwera
    print('Token:  $fOMToken');
  }

  void handleMessage(RemoteMessage? message) {
    // jeżeli message jest równa 0 to nie rób nic
    if (message == null) return;

    // nawigacaj do nowego okna po wciśnieciu przez użytkowniak okienka
  }

  Future initPushNotifications() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}
