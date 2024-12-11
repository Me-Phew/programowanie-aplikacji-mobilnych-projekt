import 'modules/auth/wirtualny_auth.dart';

class WirtualnySdk {
  WirtualnySdk._internal();

  static final WirtualnySdk _instance = WirtualnySdk._internal();

  factory WirtualnySdk() {
    return _instance;
  }

  static WirtualnySdk get instance => _instance;

  final WirtualnyAuth _auth = WirtualnyAuth();

  WirtualnyAuth get auth => _auth;
}
