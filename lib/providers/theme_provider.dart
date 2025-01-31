import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_theme.dart'; // Ensure correct path

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = AppTheme.lightTheme; // Default theme is light

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    if (_themeData == AppTheme.lightTheme) {
      _themeData = AppTheme.darkTheme;
    } else {
      _themeData = AppTheme.lightTheme;
    }
    notifyListeners(); // Notify UI about the change
  }
}
