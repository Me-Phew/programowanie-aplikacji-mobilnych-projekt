import 'package:dio/dio.dart';

class WirtualnyHttpClient {
  final String baseUrl;

  WirtualnyHttpClient._internal({required this.baseUrl}) {
    _dio = Dio(BaseOptions(
      contentType: 'application/json',
      baseUrl: baseUrl,
      headers: {
        'User-Agent': 'WirtualnySDK',
      },
      connectTimeout: Duration(seconds: 10),
    ));
     dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print('REQUEST[${options.method}] => PATH: ${options.path}');
          print('Headers: ${options.headers}');
          print('Data: ${options.data}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
          print('Data: ${response.data}');
          return handler.next(response);
        },
        onError: (DioError e, handler) {
          print('ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.path}');
          print('Message: ${e.message}');
          return handler.next(e);
        },
      ),
    );
  }

  static void initialize({required baseUrl}) {
    if (_instance != null) {
      throw Exception('WirtualnySdk has already been initialized.');
    }

    _instance = WirtualnyHttpClient._internal(baseUrl: baseUrl);
  }

  static WirtualnyHttpClient? _instance;

  factory WirtualnyHttpClient() {
    return instance;
  }

  static WirtualnyHttpClient get instance {
    if (_instance == null) {
      throw Exception(
          'WirtualnyHttpClient is not initialized. Call initialize() first.');
    }

    return _instance!;
  }

  late Dio _dio;

  Dio get dio => _dio;
}
