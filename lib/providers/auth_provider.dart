// import 'package:flutter/material.dart';
// import '../services/auth_service.dart';

// class AuthProvider with ChangeNotifier {
//   final AuthService authService;
//   String? _token;
//   bool _isAuthenticated = false;

//   AuthProvider({required this.authService});

//   bool get isAuthenticated => _isAuthenticated;
//   String? get token => _token;

//   Future<void> login(String username, String password) async {
//     try {
//       _token = await authService.login(username, password);
//       _isAuthenticated = true;
//       notifyListeners();
//     } catch (e) {
//       throw e;
//     }
//   }

//   Future<void> logout() async {
//     if (_token != null) {
//       await authService.logout(_token!);
//       _token = null;
//       _isAuthenticated = false;
//       notifyListeners();
//     }
//   }
// }
