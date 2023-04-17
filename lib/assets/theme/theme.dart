import 'package:flutter/material.dart';

import '../colors/colors.dart';

class AppTheme {
  static ThemeData lightTheme() => ThemeData(
        fontFamily: 'WorkSans',
        primaryColor: primary,
        brightness: Brightness.light,
        scaffoldBackgroundColor: background,
        textTheme: const TextTheme(
          headline1: headline1,
          headline2: headline2,
          headline3: headline3,
          headline4: headline4,
          headline5: headline5,
          headline6: headline6,
          bodyText1: bodyText1,
          bodyText2: bodyText2,
          caption: caption,
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: primary,
          onPrimary: white,
          secondary: blue,
          onSecondary: accentGrey,
          error: red,
          onError: arrowGrey,
          background: lightBrown,
          onBackground: white,
          surface: greyTextColor,
          onSurface: black,
        ),
      );

  // Fonts
  static const headline1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: dark,
  );
  static const headline2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: white,
  );
  static const headline3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: black,
  );
  static const headline4 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: grey,
  );
  static const headline5 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: lightGrey,
  );
  static const headline6 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: red,
  );
  static const bodyText1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: bodyText1Color,
  );

  static const bodyText2 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: lightPrimary,
  );
  static const caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: blue,
  );
}
