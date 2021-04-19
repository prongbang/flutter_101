import 'package:flutter/material.dart';

var themeWec = ThemeData(
  // Define the default brightness and colors.
  brightness: true ? Brightness.light : Brightness.dark,
  primaryColor: Color(0xfff4ba1d),
  accentColor: Color(0xff3982f4),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.blue[300],
    selectionColor: Colors.blue[100],
    selectionHandleColor: Colors.blue[100],
  ),
  snackBarTheme: SnackBarThemeData(
    contentTextStyle: TextStyle(fontFamily: 'Krungsri Regular'),
  ),

  // Define the default font family.
  fontFamily: 'Krungsri Regular',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0),
    bodyText2: TextStyle(fontSize: 14.0),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
