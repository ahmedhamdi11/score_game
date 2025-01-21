import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Core/widgets/playing_card.dart';

class SinglePlayersDabalatItem extends StatelessWidget {
  const SinglePlayersDabalatItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          // card
          const PlayingCard(
            suit: PlayingCardSuit.hearts,
            value: PlayingCardValue.jack,
          ),

          const SizedBox(width: 12),

          // players
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _buildRadioTile(
                        playerName: 'محمد',
                        value: true,
                      ),
                    ),
                    Expanded(
                      child: _buildRadioTile(
                        playerName: 'محمد',
                        value: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: _buildRadioTile(
                        playerName: 'محمد',
                        value: true,
                      ),
                    ),
                    Expanded(
                      child: _buildRadioTile(
                        playerName: 'محمد',
                        value: false,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // custom divider
                Image.asset(
                  AppAssets.imagesCustomDivider,
                  fit: BoxFit.fitWidth,
                ),

                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioTile({
    required String playerName,
    required bool value,
  }) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            Radio(
              value: value,
              groupValue: true,
              onChanged: (v) {},
              toggleable: true,
              visualDensity: VisualDensity.compact,
              fillColor: const WidgetStatePropertyAll(AppColors.red_300),
            ),
            Text(
              playerName,
              style: AppTextStyles.regular_12.copyWith(
                color: AppColors.secondary_400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
