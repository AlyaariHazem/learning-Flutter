// // lib/loginForm.dart
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/services/api_service.dart';
// import 'package:flutter_application_1/services/auth_service.dart';
// import 'dashboard.dart';

// class LoginForm extends StatefulWidget {
//   const LoginForm({super.key});

//   @override
//   State<LoginForm> createState() => _LoginFormState();
// }

// class _LoginFormState extends State<LoginForm> {
//   // Controllers to get text input from the user.
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   // Simple login function to validate the username and password.
// void _handleLogin() async {
//   final username = _usernameController.text.trim();
//   final password = _passwordController.text;

//   bool success = await AuthService(apiService: ApiService(baseUrl: 'https://localhost:7258')).login(username, password);
//   if (mounted) { // Add this check
//     if (success) {
//       // Navigate to the Dashboard if login is successful
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const Dashboard()),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Invalid username or password'),
//           duration: Duration(seconds: 2),
//         ),
//       );
//     }
//     // Unmount the widget if it's disposed of
//     if (!mounted) return;
//   }
// }

//   @override
//   void dispose() {
//     // Dispose of the controllers when the widget is removed.
//     _usernameController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Gradient background
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [
//                   Color.fromARGB(255, 97, 233, 110), // First color
//                   Color.fromARGB(255, 97, 181, 136), // Second color
//                 ],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//           ),
//           // Center content scrollable
//           Center(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(16),
//               child: Card(
//                 elevation: 6,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       const Text(
//                         'Welcome to MySchool App',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(height: 16),
//                       TextField(
//                         controller: _usernameController,
//                         decoration: InputDecoration(
//                           labelText: 'Username',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           prefixIcon: const Icon(Icons.person),
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       TextField(
//                         controller: _passwordController,
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           labelText: 'Password',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           prefixIcon: const Icon(Icons.lock),
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: TextButton(
//                           onPressed: () {
//                             // Implement your "Forgot Password" logic here.
//                           },
//                           child: const Text('Forgot Password?'),
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       ElevatedButton(
//                         onPressed: _handleLogin,
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(vertical: 16),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           backgroundColor: Theme.of(context)
//                               .colorScheme
//                               .primary, // Ensure good contrast with text
//                         ),
//                         child: const Text(
//                           'Login',
//                           style: TextStyle(fontSize: 18, color: Colors.white),
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text("Don't have an account?"),
//                           TextButton(
//                             onPressed: () {
//                               // Handle sign up or registration logic here.
//                             },
//                             child: const Text('Sign Up'),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
