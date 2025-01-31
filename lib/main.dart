import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/screens/announcements_screen.dart';
import 'package:flutter_application_1/screens/attendance_screen.dart';
import 'package:flutter_application_1/screens/gallery_screen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/students_screen.dart';
import 'package:flutter_application_1/screens/settings_screen.dart';
import 'package:flutter_application_1/providers/theme_provider.dart'; // Import ThemeProvider

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const TeacherDashboardApp(),
    ),
  );
}

class TeacherDashboardApp extends StatelessWidget {
  const TeacherDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Teacher Dashboard',
          theme: themeProvider.themeData, // Use dynamic theme
          initialRoute: '/login',
          routes: {
            '/login': (context) => const LoginScreen(),
            '/home': (context) => const HomeScreen(),
            '/attendance': (context) => const AttendanceScreen(),
            '/announcements': (context) => const AnnouncementsScreen(),
            '/gallery': (context) => const GalleryScreen(),
            '/students': (context) => StudentsScreen(),
            '/settings': (context) => const SettingsScreen(),
          },
        );
      },
    );
  }
}


