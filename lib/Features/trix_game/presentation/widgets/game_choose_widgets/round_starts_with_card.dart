import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Core/widgets/playing_card.dart';

class RoundStartsWithCard extends StatelessWidget {
  const RoundStartsWithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // text card
          Container(
            padding: const EdgeInsetsDirectional.only(
              top: 20,
              bottom: 20,
              start: 28,
              // 40 is the width of the round playing card , 16 is the padding between the text and the card
              end: 28 + 40 + 16,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.primary_300, width: 4),
            ),
            child: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'بداية الجولة مع ورقة 7 ♥️',
                style: AppTextStyles.regular_15,
              ),
            ),
          ),

          // playing card
          const PositionedDirectional(
            top: -10,
            end: 28,
            child: PlayingCard(
              suit: PlayingCardSuit.hearts,
              value: PlayingCardValue.seven,
            ),
          ),
        ],
      ),
    );
  }
}
