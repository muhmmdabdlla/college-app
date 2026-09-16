import 'package:flutter/material.dart';
import 'theme.dart';
import '../features/welcome/welcome_screen.dart';

class MicCollegeApp extends StatelessWidget {
  const MicCollegeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MIC College',

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      themeMode: ThemeMode.dark,

      home: const WelcomeScreen(),
    );
  }
}