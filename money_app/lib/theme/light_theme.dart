import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor:
      Color(0xffC0028B), //instead of hash # put 0xff to get the wanted color
  colorScheme: ColorScheme.light().copyWith(secondary: Color(0xffC0028B)),
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
   
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
