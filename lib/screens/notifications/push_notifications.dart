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
}
