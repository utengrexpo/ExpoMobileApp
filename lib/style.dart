import 'package:flutter/material.dart';

const colorScheme = ColorScheme(
  brightness: Brightness.light,
  // colors that follow start with FF because FF indicates the alpha
  primary: Color(0xFFBF5700),
  onPrimary: Colors.white,
  secondary: Colors.white,
  onSecondary: Colors.black,
  error: Color(0xFFFF0000),
  onError: Colors.white,
  background: Color(0xFFFFEBDC),
  onBackground: Colors.black,
  surface: Color(0xFFF8971F),
  onSurface: Colors.black,
);

const textTheme = TextTheme(
  displayLarge: TextStyle(
    fontFamily: 'LibreFranklin',
    fontWeight: FontWeight.w700,
    fontSize: 28.0,
    color: Colors.black,
  ),
  displayMedium: TextStyle(
    fontFamily: 'LibreFranklin',
    fontWeight: FontWeight.w700,
    fontSize: 24.0,
    color: Colors.black,
  ),
  displaySmall: TextStyle(
    fontFamily: 'LibreFranklin',
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
    color: Colors.black,
  ),
  // Add other text styles as needed
  bodyLarge: TextStyle(
    fontFamily: 'LibreFranklin',
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    color: Colors.black,
  ),
  bodyMedium: TextStyle(
    fontFamily: 'LibreFranklin',
    fontWeight: FontWeight.normal,
    fontSize: 14.0,
    color: Colors.black,
  ),
);
