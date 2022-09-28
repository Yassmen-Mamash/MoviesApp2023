import 'package:flutter/material.dart';

class MyThemeData {
  static const Color primarycolorDark = Color(0xFF343534);
  static const Color scaffoldBacgroundcolorDark = Color(0xFF0C0C0C);
  static const Color orange = Color(0xFFFFBB3B);

  static final darkTheme = ThemeData(
    primaryColor: primarycolorDark,
    scaffoldBackgroundColor: scaffoldBacgroundcolorDark,
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Color(0xFF707070)
      ),
    ),
  );
}
