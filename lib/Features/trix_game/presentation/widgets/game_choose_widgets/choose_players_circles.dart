import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_cubit.dart';

class ChoosePlayersCircles extends StatelessWidget {
  const ChoosePlayersCircles({
    super.key,
    required this.playerOne,
    required this.playerTwo,
    required this.playerThree,
    required this.playerFour,
  });

  final String playerOne, playerTwo, playerThree, playerFour;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TrixCubit>();

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
                    child: _PlayerNameCircle(
                      team: cubit.state.selectedType == GamePlayersType.team
                          ? "ف 1"
                          : null,
                      content: playerOne,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // player three
                      _PlayerNameCircle(
                        content: playerThree,
                        team: cubit.state.selectedType == GamePlayersType.team
                            ? "ف 2"
                            : null,
                      ),

                      // player four
                      _PlayerNameCircle(
                        content: playerFour,
                        team: cubit.state.selectedType == GamePlayersType.team
                            ? "ف 2"
                            : null,
                      ),
                    ],
                  ),

                  // player two
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: _PlayerNameCircle(
                      content: playerTwo,
                      team: cubit.state.selectedType == GamePlayersType.team
                          ? "ف 1"
                          : null,
                    ),
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
    this.team,
  });

  final String content;
  final String? team;

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
        child: Column(
          children: [
            if (team != null)
              Text(
                team!,
                style: AppTextStyles.semiBold_12.copyWith(
                  color: AppColors.white,
                ),
              ),
            if (team != null) const SizedBox(height: 2),
            Text(
              content,
              style: AppTextStyles.semiBold_12.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
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
