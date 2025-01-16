import 'package:flutter/material.dart';
import 'package:score_game/Core/constants/constants.dart';

class AppThemes {
  static ThemeData lightTheme() => ThemeData(
        // font
        fontFamily: kAlexandriaFamily,

        // app bar theme
        appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: kSTVFontFamily,
          ),
          backgroundColor: Colors.transparent,
        ),
      );
}
