import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF1A3C64);
  static const Color accentColor = Color(0xFFF7C873);
  static const Color darkText = Color(0xFF1A1A1A);
  static const Color lightGreyText = Color(0xFF9E9E9E);
  static const Color backgroundColor = Color(0xFFF5F6FA);
  static const Color whiteColor = Color(0xFFFFFFFF);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        primary: primaryColor,
        secondary: accentColor,
        background: backgroundColor,
        surface: whiteColor,
        onPrimary: whiteColor,
        onBackground: darkText,
        onSurface: darkText,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: darkText,
          fontFamily: 'Poppins',
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: darkText,
          fontFamily: 'Poppins',
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          color: lightGreyText,
          fontFamily: 'Poppins',
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          color: accentColor,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: whiteColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
        iconTheme: IconThemeData(color: whiteColor),
      ),
    );
  }
}
