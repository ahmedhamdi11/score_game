import 'package:flutter/material.dart';

abstract class AppColors {
  /// colors
  static const primary_100 = Color(0xffFEE178);
  static const primary_200 = Color(0xffF9CE31);
  static const primary_300 = Color(0xffECBD10);
  static const primary_400 = Color(0xffCEA203);
  static const primary_500 = Color(0xff806400);

  static const secondary_100 = Color(0xffCCCCCC);
  static const secondary_200 = Color(0xff999898);
  static const secondary_300 = Color(0xff666565);
  static const secondary_400 = Color(0xff333333);
  static const secondary_500 = Color(0xff000000);

  static const red_100 = Color(0xffE57171);
  static const red_200 = Color(0xffCB2A2A);
  static const red_300 = Color(0xffB10D0D);
  static const red_400 = Color(0xff970202);
  static const red_500 = Color(0xff7D0000);

  static const green_100 = Color(0xff71E59F);
  static const green_200 = Color(0xff2ACB6A);
  static const green_300 = Color(0xff0DB14E);
  static const green_400 = Color(0xff02973E);
  static const green_500 = Color(0xff007D32);

  static const blue_100 = Color(0xff71C4E5);
  static const blue_200 = Color(0xff2A9DCB);
  static const blue_300 = Color(0xff0D82B1);
  static const blue_400 = Color(0xff026D97);
  static const blue_500 = Color(0xff005A7D);

  static const white = Colors.white;
  static const black = Colors.black;

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
          offset: const Offset(3, 4),
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

  static const otherPlayerGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xffCCCCCC),
      Color(0xff666565),
      Color(0xff333333),
    ],
  );

  static const redLinearGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xffCB2A2A),
      Color(0xff7D0000),
    ],
  );

  static const redRadialGradient = RadialGradient(
    radius: 0.6,
    colors: [
      Color(0xffCB2A2A),
      Color(0xff7D0000),
    ],
  );

  static const greenGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xff0DB14E),
      Color(0xff007D32),
    ],
  );

  static const blueGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xff2A9DCB),
      Color(0xff005A7D),
    ],
  );

  static RadialGradient whiteRadialGradient = RadialGradient(
    colors: [
      Colors.white,
      Colors.white.withOpacity(0.5),
      Colors.white.withOpacity(0),
    ],
  );
}
