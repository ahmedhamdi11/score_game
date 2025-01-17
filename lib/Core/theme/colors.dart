import 'package:flutter/material.dart';

abstract class AppColors {
  /// colors
  static const white = Colors.white;
  static const black = Colors.black;
  static const primary_300 = Color(0xffECBD10);
  static const secondary_400 = Color(0xff333333);
  static const red_400 = Color(0xff970202);
  static const green_400 = Color(0xff02973E);
  static const blue_500 = Color(0xff005A7D);

  /// shadows
  static textShadows([Color? color1, Color? color2]) => [
        BoxShadow(
          offset: const Offset(0, 2),
          blurRadius: 0,
          spreadRadius: 0,
          color: color1 ?? AppColors.red_400,
        ),
        BoxShadow(
          offset: const Offset(0, -2),
          blurRadius: 0,
          spreadRadius: 0,
          color: color1 ?? AppColors.red_400,
        ),
        BoxShadow(
          offset: const Offset(2, 0),
          blurRadius: 0,
          spreadRadius: 0,
          color: color1 ?? AppColors.red_400,
        ),
        BoxShadow(
          offset: const Offset(-2, 0),
          blurRadius: 0,
          spreadRadius: 0,
          color: color1 ?? AppColors.red_400,
        ),
        BoxShadow(
          offset: const Offset(0, 5),
          blurRadius: 0,
          spreadRadius: 0,
          color: color2 ?? AppColors.black.withOpacity(0.2),
        ),
      ];

  /// gradients
  static const radialGradient = RadialGradient(
    radius: 0.6,
    colors: [
      Color(0xff686868),
      Color(0xff383A38),
    ],
  );

  static const startPlayerGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xffF9CE31),
      Color(0xffCEA203),
      Color(0xff806400),
    ],
  );
}
