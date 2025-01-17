import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';

class DefaultBackground extends StatelessWidget {
  const DefaultBackground({
    super.key,
    this.gradient,
  });

  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: gradient ?? AppColors.radialGradient,
      ),
      child: Opacity(
        opacity: 0.4,
        child: Image.asset(
          AppAssets.imagesBackground,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
