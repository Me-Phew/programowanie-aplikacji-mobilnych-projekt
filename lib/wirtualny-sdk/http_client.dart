import 'package:http/http.dart' as http;

class HTTPClient extends http.BaseClient {
  final String userAgent;
  final http.Client _inner;

  HTTPClient(this.userAgent, this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['user-agent'] = userAgent;
    return _inner.send(request);
  }
}
