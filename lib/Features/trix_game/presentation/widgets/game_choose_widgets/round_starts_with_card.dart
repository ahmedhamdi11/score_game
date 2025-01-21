import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Core/widgets/playing_card.dart';

class RoundStartsWithCard extends StatelessWidget {
  const RoundStartsWithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.topEnd,
        children: [
          // text card
          Container(
            margin: const EdgeInsets.only(top: 10),
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
          const Padding(
            padding: EdgeInsetsDirectional.only(end: 28),
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
