import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF2E3746);
  static const Color secondary = Color(0xFFFFC600);
  static const Color tertiary = Color(0xFF5A6476);

  static ThemeData get theme {
    return ThemeData(
      primaryColor: primary,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        secondary: secondary,
      ),
      iconTheme: const IconThemeData(color: secondary),
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: secondary,
      ),
    );
  }
}
