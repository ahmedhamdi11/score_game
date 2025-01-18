import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';
import 'package:score_game/Core/widgets/custom_shaped_button.dart';
import 'package:score_game/Features/trix_game/presentation/widgets/toggle_buttons.dart';

class TrixPlayersBody extends StatelessWidget {
  const TrixPlayersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // players section
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                TrixSingleMultiToggle(),
              ],
            ),
          ),
        ),

        // continue button
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CustomShapedButton(
                onTap: () {},
                btnText: 'استمرار',
              ),
            ),
            const SizedBox(width: 6),
            _buildGameImage(),
          ],
        ),
      ],
    );
  }

  Stack _buildGameImage() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: ShapeDecoration(
            shape: const CircleBorder(),
            gradient: AppColors.whiteRadialGradient,
          ),
        ),
        Image.asset(
          AppAssets.imagesTrixGameImage,
          height: 170,
          fit: BoxFit.fitHeight,
        ),
      ],
    );
  }
}
