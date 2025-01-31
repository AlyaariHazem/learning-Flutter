import 'package:flutter/material.dart';
import 'color_constants.dart'; // Assuming you have this file

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorConstants.primary,
    colorScheme: const ColorScheme.light(
      primary: ColorConstants.primary,
      secondary: ColorConstants.accent, // Replaces accentColor
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorConstants.primary,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: ColorConstants.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.accent, // Button color
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    // Define other theme properties using colorScheme
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(
      primary: Colors.black,
      secondary: Colors.grey, // Replaces accentColor
    ),
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey, // Button color
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    // Define other theme properties using colorScheme
  );
}
