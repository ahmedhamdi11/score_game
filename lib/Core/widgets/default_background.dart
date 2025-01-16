import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';

class DefaultBackground extends StatelessWidget {
  const DefaultBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: AppColors.radialGradient,
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
