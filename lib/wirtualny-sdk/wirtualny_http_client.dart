import 'package:dio/dio.dart';

class WirtualnyHttpClient {
  WirtualnyHttpClient._internal();

  static final WirtualnyHttpClient _instance = WirtualnyHttpClient._internal();

  factory WirtualnyHttpClient() {
    return _instance;
  }

  static WirtualnyHttpClient get instance => _instance;

  final Dio _dio = Dio(BaseOptions(
      contentType: 'application/json',
      baseUrl: 'http://192.168.1.13:3000/api/',
      headers: {
        'User-Agent': 'WirtualnySDK',
      }));

  Dio get dio => _dio;
}
