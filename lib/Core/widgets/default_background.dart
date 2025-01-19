import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';

class DefaultBackground extends StatelessWidget {
  const DefaultBackground({
    super.key,
    this.gradient,
    this.opacity = 0.4,
  });

  final Gradient? gradient;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradient ?? AppColors.radialGradient,
      ),
      child: Opacity(
        opacity: opacity,
        child: Image.asset(
          AppAssets.imagesBackground,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
