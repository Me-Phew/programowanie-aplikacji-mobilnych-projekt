import 'dart:convert';
import 'package:http/http.dart' as http;

import 'http_client.dart';
import 'models/request-data/login_data.dart';
import 'models/responses/student_login_response.dart';

class WirtualnySdk {
  final HTTPClient _httpClient = HTTPClient('Wirtualny SDK', http.Client());

  Future<StudentLoginResponse?> login(StudentLoginData loginData) async {
    print(loginData.email);

    final response = await _httpClient.post(
      Uri.parse('http://192.168.21.2:3000/api/students/login'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'email': loginData.email,
        'password': loginData.password,
      }),
    );

    final jsonResponse = json.decode(response.body);

    print(jsonResponse);

    return StudentLoginResponse.fromJson(jsonResponse);
  }
}
