import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_cubit.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_state.dart';

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
            const _BackgroundCircleWithDabalatInfo(),

            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // player one
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: _PlayerNameCircle(
                      team: cubit.state.playersType == GamePlayersType.team
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
                        team: cubit.state.playersType == GamePlayersType.team
                            ? "ف 2"
                            : null,
                      ),

                      // player four
                      _PlayerNameCircle(
                        content: playerFour,
                        team: cubit.state.playersType == GamePlayersType.team
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
                      team: cubit.state.playersType == GamePlayersType.team
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

class _BackgroundCircleWithDabalatInfo extends StatelessWidget {
  const _BackgroundCircleWithDabalatInfo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(45),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          // background circle with dabalat info
          BlocSelector<TrixCubit, TrixState, TrixGameType>(
            selector: (state) => state.trixGameType,
            builder: (context, state) {
              return Container(
                width: 260,
                height: 260,
                padding: const EdgeInsets.all(50),
                decoration: const ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide(color: AppColors.primary_300),
                  ),
                  color: AppColors.red_100,
                ),
                child: state == TrixGameType.complex
                    ? const DabalatInfoButton()
                    : null,
              );
            },
          ),

          // directional arrows
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

class DabalatInfoButton extends StatelessWidget {
  const DabalatInfoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // player one dabalat
            _dabalatValue(cardNum: 'K'),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // player three dabalat
                _dabalatValue(cardNum: '2Q', cardSymbol: '♠️♦️️'),

                const SizedBox(width: 14),

                Container(
                  width: 67,
                  height: 67,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                      side: BorderSide(color: AppColors.primary_300),
                    ),
                  ),
                  child: Text(
                    'دبلات',
                    style: AppTextStyles.semiBold_12.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),

                const SizedBox(width: 14),

                // player four dabalat
                _dabalatValue(cardNum: '2Q', cardSymbol: '♣️♥️️'),
              ],
            ),

            const SizedBox(height: 14),

            // player two dabalat
            _dabalatValue(),
          ],
        ),
      ),
    );
  }

  Widget _dabalatValue({
    String? cardNum,
    String? cardSymbol,
  }) {
    return Column(
      children: [
        Text(
          cardNum ?? '.....',
          style: AppTextStyles.regular_13.copyWith(
            color: AppColors.white,
          ),
        ),
        if (cardSymbol != null)
          Text(
            cardSymbol,
            style: AppTextStyles.regular_13.copyWith(
              color: AppColors.white,
            ),
          ),
      ],
    );
  }
}
