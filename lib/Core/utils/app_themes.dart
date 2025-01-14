import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData lightTheme() => ThemeData(
        textTheme: GoogleFonts.alexandriaTextTheme(),
        appBarTheme: AppBarTheme(
          scrolledUnderElevation: 0,
          titleTextStyle: GoogleFonts.notoSansTaiViet().copyWith(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Colors.transparent,
        ),
      );
}
