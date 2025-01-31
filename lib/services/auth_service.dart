import 'package:flutter_application_1/services/api_service.dart';

class AuthService {
  final ApiService apiService;

  AuthService({required this.apiService});

  Future<bool> login(String username, String password) async {
    try {
      final response = await apiService.post('api/account/login', {
        'username': username,
        'password': password,
      });

      if (response['token'] != null) {
        apiService.setToken(response['token']);
        return true;
      } else {
        throw Exception('Login failed: No token received');
      }
    } catch (e) {
      print("Login error: $e");
      return false;
    }
  }

  Future<void> logout() async {
    apiService.setToken(null);
  }
}
