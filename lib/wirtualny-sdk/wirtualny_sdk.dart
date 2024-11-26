import 'dart:convert';
import 'package:http/http.dart' as http;

import 'http_client.dart';
import 'models/request-data/sign_in_data.dart';

class WirtualnySdk {
  final HTTPClient _httpClient = HTTPClient('Wirtualny SDK', http.Client());

  Future<void> login(StudentLoginData loginData) async {
    final response = await _httpClient
        .post(Uri.parse('http://localhost:3000/api/students/login'), body: {
      'email': loginData.email,
      'password': loginData.password,
    });

    final jsonResponse = json.decode(response.body);

    print(jsonResponse);
  }
}
