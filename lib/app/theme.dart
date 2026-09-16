import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF0A0F0D);
  static const surface = Color(0xFF121A16);
  static const surfaceLight = Color(0xFF18231E);

  static const primary = Color(0xFF19B879);
  static const primaryBright = Color(0xFF35E39A);

  static const textPrimary = Color(0xFFF2F7F4);
  static const textSecondary = Color(0xFF9BAAA3);
  static const border = Color(0xFF26332D);
}

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.background,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.primaryBright,
      surface: AppColors.surface,
    ),

    fontFamily: 'Roboto',

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: AppColors.textPrimary,
    ),

    useMaterial3: true,
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF5F8F6),

    colorScheme: const ColorScheme.light(
      primary: Color(0xFF087A4B),
      secondary: Color(0xFF12A86A),
      surface: Colors.white,
    ),

    fontFamily: 'Roboto',

    useMaterial3: true,
  );
}