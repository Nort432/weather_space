import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Color(0xFF000000),
      secondary: Color(0xFF3C3C43),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Color(0xFF000000),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Color(0xFF000000)),
      bodyMedium: TextStyle(color: Color(0xFF3C3C43)),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
  );
}
