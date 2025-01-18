import 'package:flutter_application/wirtualny-sdk/modules/notifications/wirtualny_notifications.dart';
import 'package:flutter_application/wirtualny-sdk/wirtualny_http_client.dart';

import 'modules/auth/wirtualny_auth.dart';
import 'wirtualny_sdk_config.dart';

class WirtualnySdk {
  final WirtualnySdkConfig config;

  WirtualnySdk._internal(this.config);

  static void initialize({required WirtualnySdkConfig config}) {
    if (_instance != null) {
      throw Exception('WirtualnySdk has already been initialized.');
    }

    WirtualnyHttpClient.initialize(baseUrl: config.restApiBaseUrl);
    _instance = WirtualnySdk._internal(config);
  }

  static WirtualnySdk? _instance;

  factory WirtualnySdk() {
    return instance;
  }

  static WirtualnySdk get instance {
    if (_instance == null) {
      throw Exception(
          'WirtualnySdk is not initialized. Call initialize() first.');
    }

    return _instance!;
  }

  final WirtualnyAuth _auth = WirtualnyAuth();
  final WirtualnyNotifications _wirtualnyNotifications =
      WirtualnyNotifications();

  WirtualnyAuth get auth => _auth;
  WirtualnyNotifications get wirtualnyNotifications => _wirtualnyNotifications;
}
