import 'package:flutter/material.dart';

abstract class AppColors {
  /// colors
  static const white = Colors.white;
  static const black = Colors.black;
  static const primary_300 = Color(0xffECBD10);
  static const secondary_400 = Color(0xff333333);
  static const red_400 = Color(0xff970202);

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
