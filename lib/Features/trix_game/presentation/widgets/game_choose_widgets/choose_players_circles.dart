import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';

class ChoosePlayersCircles extends StatelessWidget {
  const ChoosePlayersCircles({
    super.key,
    required this.circleOne,
    required this.circleTwo,
    required this.circleThree,
    required this.circleFour,
  });

  final String circleOne, circleTwo, circleThree, circleFour;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Stack(
          children: [
            // background circle
            const _BackgroundCircleWithArrows(),

            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // player one
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: _PlayerNameCircle(content: circleOne),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // player four
                      _PlayerNameCircle(content: circleFour),

                      // player two
                      _PlayerNameCircle(content: circleTwo),
                    ],
                  ),

                  // player three
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: _PlayerNameCircle(content: circleThree),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayerNameCircle extends StatelessWidget {
  const _PlayerNameCircle({
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      padding: const EdgeInsets.all(10),
      decoration: const ShapeDecoration(
        shape: CircleBorder(side: BorderSide(color: AppColors.white)),
        gradient: AppColors.otherPlayerGradient,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          content,
          style: AppTextStyles.semiBold_12.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

class _BackgroundCircleWithArrows extends StatelessWidget {
  const _BackgroundCircleWithArrows();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(45),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 260,
            height: 260,
            decoration: const ShapeDecoration(
              shape: CircleBorder(
                side: BorderSide(color: AppColors.primary_300),
              ),
              color: AppColors.red_100,
            ),
          ),
          PositionedDirectional(
            top: -5,
            end: -5,
            child: SvgPicture.asset(
              AppAssets.imagesCurvedArrowDown,
            ),
          ),
          PositionedDirectional(
            bottom: -5,
            start: -5,
            child: SvgPicture.asset(
              AppAssets.imagesCurvedArrowUp,
            ),
          ),
        ],
      ),
    );
  }
}
