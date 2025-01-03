import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginFrom.dart';

void main() {
  runApp(const MyApp());
}

/// The main app widget demonstrating a modern, stylish login form.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySchool App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent, // Customize your primary color here
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white, // Fallback if gradient not used
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const LoginForm(),
    );
  }
}