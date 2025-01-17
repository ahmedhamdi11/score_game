import 'package:flutter/material.dart';
import 'package:score_game/Core/constants/constants.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Features/Games/data/models/game_card_model.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.game});

  final GameCardModel game;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () => _onCardPressed(),
        child: SizedBox(
          width: double.infinity,
          height: 146,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // card
              SizedBox(
                width: double.infinity,
                height: 146,
                child: Image.asset(
                  game.backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),

              // image
              PositionedDirectional(
                bottom: 9,
                end: 0,
                child: Image.asset(game.gameImage),
              ),

              // title
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.6,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 45,
                    vertical: 0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // title
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          game.title,
                          style: AppTextStyles.bold_36.copyWith(
                            fontFamily: kSTVFontFamily,
                            color: AppColors.white,
                            shadows: AppColors.textShadows(_TextBorderColor()),
                          ),
                        ),
                      ),

                      // subtitle
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(start: 70),
                          child: Text(
                            game.subTitle ?? "",
                            style: AppTextStyles.semiBold_12.copyWith(
                              color: AppColors.white,
                              shadows: AppColors.textShadows(
                                _TextBorderColor(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _TextBorderColor() {
    switch (game.gameType) {
      case GameType.trix:
        return AppColors.red_400;
      case GameType.tarneeb:
        return AppColors.green_400;
      case GameType.bloot:
        return AppColors.blue_500;
    }
  }

  void _onCardPressed() {
    switch (game.gameType) {
      case GameType.trix:
        // TODO: Handle pressing on the trix game card
        break;
      case GameType.tarneeb:
        // TODO: Handle pressing on the tarneeb game card
        break;
      case GameType.bloot:
        // TODO: Handle pressing on the bloot game card
        break;
    }
  }
}
