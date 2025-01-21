import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/widgets/default_gradient_button.dart';
import 'package:score_game/Features/trix_game/presentation/widgets/game_choose_widgets/single_players_dabalat_item.dart';

class DabalatDialog extends StatelessWidget {
  const DabalatDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      clipBehavior: Clip.antiAlias,
      contentPadding: EdgeInsets.zero,
      actionsPadding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // header container
          Container(
            height: 80,
            color: AppColors.red_300,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                // title
                Expanded(
                  child: Text(
                    'الدبلات',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.semiBold_32.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),

                // close button
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: AppColors.red_300,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 12),

          _buildSingleGameDabalat(),
        ],
      ),
      actions: [
        DefaultGradientButton(
          onTap: () => Navigator.pop(context),
          btnText: 'تم',
        ),
      ],
    );
  }

  Widget _buildSingleGameDabalat() {
    return Flexible(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            5,
            (i) => const SinglePlayersDabalatItem(),
          ),
        ),
      ),
    );
  }
}
