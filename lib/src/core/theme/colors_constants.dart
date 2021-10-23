import 'package:flutter/material.dart';

class ColorsConstants {
  ColorsConstants._();

  static Color colorPrimary = Color(0xff5B428F);
  static Color colorPrimaryLight = Color(0xffFCF9F5);
  static Color colorPrimaryDark = Color(0xff262833);
  static Color accent = Colors.teal;
  static Color lightBG = Colors.white;
  static Color darkBG = Color(0xff121212);
  static Color lightContrast = Colors.grey.shade100;
  static Color darkContrast = Color(0xFF1D212B);

  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.white),
    ),
    primarySwatch: Colors.teal,
    primaryColor: colorPrimary,
    primaryColorDark: colorPrimaryDark,
    primaryColorLight: colorPrimaryLight,
    accentColor: accent,
    cardColor: lightContrast,
    backgroundColor: lightBG,
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: colorPrimary,
    primaryColorDark: Colors.white,
    primaryColorLight: Colors.black,
    cardColor: darkContrast,
    textTheme: Typography.whiteMountainView,
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    accentColor: accent,
    scaffoldBackgroundColor: darkBG,
    // cursorColor: darkAccent, textselectiontheme.cursorcolor
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}
