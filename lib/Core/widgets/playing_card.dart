import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_game/Core/constants/constants.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';

class PlayingCard extends StatelessWidget {
  const PlayingCard({
    super.key,
    required this.cardNumber,
    required this.cardColor,
    required this.svgIconPath,
  });

  final String cardNumber;
  final Color cardColor;
  final String svgIconPath;

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
        children: [
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  cardNumber,
                  style: AppTextStyles.regular_27.copyWith(
                    fontFamily: kDMSerifTextRegularFamily,
                    height: 0.5,
                    color: cardColor,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.bottomStart,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: SvgPicture.asset(
                  svgIconPath,
                  height: 18,
                  colorFilter: ColorFilter.mode(
                    cardColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
