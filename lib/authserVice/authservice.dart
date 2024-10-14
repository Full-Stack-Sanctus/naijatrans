import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl; // e.g., 'http://localhost:8000/api'

  AuthService(this.baseUrl);

  Future<bool> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/login/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      // Store tokens in secure storage or use them as needed
      // Example: Save tokens using flutter_secure_storage
      return true; // Login successful
    } else {
      return false; // Login failed
    }
  }

  Future<void> logout() async {
    await http.post(
      Uri.parse('$baseUrl/logout/'),
      headers: {'Content-Type': 'application/json'},
    );
  }

  Future<bool> check_authentication() async {
    final response = await http.get(
      Uri.parse('$baseUrl/auth/check-auth/'),
      headers: {'Content-Type': 'application/json'},
    );

    return response.statusCode == 200 && jsonDecode(response.body)['authenticated'];
  }
}
