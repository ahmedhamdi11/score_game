import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_game/Core/constants/constants.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';
import 'package:score_game/Core/utils/enums.dart';

class PlayingCard extends StatelessWidget {
  const PlayingCard({
    super.key,
    required this.suit,
    required this.value,
  });

  final PlayingCardSuit suit;
  final PlayingCardValue value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 60,
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: AppColors.secondary_100,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                _getCardValue(),
                style: AppTextStyles.regular_27.copyWith(
                  fontFamily: kDMSerifTextRegularFamily,
                  height: 0.5,
                  color: _getCardColor(),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(
                _getCardSuit(),
                height: 18,
                colorFilter: ColorFilter.mode(
                  _getCardColor(),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getCardSuit() {
    switch (suit) {
      case PlayingCardSuit.spades:
        return AppAssets.iconsPlayingCardSpades;

      case PlayingCardSuit.hearts:
        return AppAssets.iconsPlayingCardHearts;

      case PlayingCardSuit.diamonds:
        return AppAssets.iconsPlayingCardDiamonds;

      case PlayingCardSuit.clubs:
        return AppAssets.iconsPlayingCardClubs;
    }
  }

  String _getCardValue() {
    switch (value) {
      case PlayingCardValue.ace:
        return 'A';
      case PlayingCardValue.two:
        return '2';
      case PlayingCardValue.three:
        return '3';
      case PlayingCardValue.four:
        return '4';
      case PlayingCardValue.five:
        return '5';
      case PlayingCardValue.six:
        return '6';
      case PlayingCardValue.seven:
        return '7';
      case PlayingCardValue.eight:
        return '8';
      case PlayingCardValue.nine:
        return '9';
      case PlayingCardValue.ten:
        return '10';
      case PlayingCardValue.jack:
        return 'J';
      case PlayingCardValue.queen:
        return 'Q';
      case PlayingCardValue.king:
        return 'K';
    }
  }

  Color _getCardColor() {
    switch (suit) {
      case PlayingCardSuit.spades:
      case PlayingCardSuit.clubs:
        return AppColors.black;
      case PlayingCardSuit.hearts:
      case PlayingCardSuit.diamonds:
        return AppColors.red_200;
    }
  }
}
