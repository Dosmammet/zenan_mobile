import 'package:flutter/material.dart';
import 'package:zenan_2/utils/colors.dart';

class Themes {
  final myDarkTheme = ThemeData(
    primaryColor: kBackgroundColor,
    accentColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.white),
    fontFamily: 'Marcellus',
    scaffoldBackgroundColor: Color(0xff303030),
    brightness: Brightness.dark,
    primaryColorDark: Colors.grey[300],
    primaryColorLight: Colors.grey[800],
    secondaryHeaderColor: Colors.grey[400],
    shadowColor: Color(0xff282828),
    backgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      color: Colors.grey[900],
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      actionsIconTheme: IconThemeData(color: Colors.white),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: 'Marcellus',
          fontSize: 18,
          letterSpacing: -0.6,
          wordSpacing: 1,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    ),
    // textTheme: TextTheme(
    //   subtitle1: TextStyle(
    //       fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
    // ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.grey[900],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[500],
    ),

    colorScheme: ColorScheme(
        primary: Colors.black38,
        primaryVariant: Colors.grey[700]!,
        secondary: kBackgroundColor,
        secondaryVariant: Colors.black54,
        surface: Colors.white,
        background: Colors.black,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.black54,
        onSurface: Colors.black,
        onBackground: Colors.white,
        onError: Colors.red,
        brightness: Brightness.dark),
  );

  final myLightTheme = ThemeData(
    primaryColor: kBackgroundColor,
    accentColor: kBackgroundColor,
    iconTheme: IconThemeData(color: Colors.black),
    fontFamily: 'Quicksand',
    scaffoldBackgroundColor: Colors.grey[100],
    brightness: Brightness.light,
    primaryColorDark: Colors.grey[800],
    primaryColorLight: Colors.white,
    secondaryHeaderColor: Colors.grey[600],
    shadowColor: Colors.grey[200],
    backgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      color: Colors.white,
      elevation: 0,
      foregroundColor: kBackgroundColor,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      actionsIconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontFamily: 'Quicksand',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.6,
          wordSpacing: 1,
          color: Colors.black,
        ),
      ),
    ),
    // textTheme: TextTheme(
    //   subtitle1: TextStyle(
    //       fontWeight: FontWeight.w500, fontSize: 16, color: Colors.grey[900]),
    // ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey[500],
    ),
    // fontFamily: 'Opensans',
    colorScheme: ColorScheme(
        primary: Colors.grey,
        primaryVariant: Colors.white,
        secondary: Colors.white,
        secondaryVariant: Colors.grey[100]!,
        surface: Colors.white,
        background: Colors.white,
        error: Colors.red,
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: Colors.black,
        onBackground: Colors.black,
        onError: Colors.red,
        brightness: Brightness.light),
  );
}
