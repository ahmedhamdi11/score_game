import 'package:flutter/material.dart';
import 'package:score_game/Core/constants/constants.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Features/Games/data/models/game_card_model.dart';
import 'package:score_game/Features/Games/presentation/widgets/game_card.dart';

class GamesViewBody extends StatefulWidget {
  const GamesViewBody({super.key});

  @override
  State<GamesViewBody> createState() => _GamesViewBodyState();
}

class _GamesViewBodyState extends State<GamesViewBody> {
  late List<GameCardModel> availableGames;

  @override
  void initState() {
    availableGames = _getAvailableGames;

    super.initState();
  }

  List<GameCardModel> get _getAvailableGames {
    return const [
      // trix
      GameCardModel(
        title: "تريكس",
        subTitle: "كومليكس",
        backgroundImage: AppAssets.imagesGameCardRed,
        gameImage: AppAssets.imagesTrixGameImage,
        gameType: GameType.trix,
      ),

      // tarneeb
      GameCardModel(
        title: "طرنيب",
        backgroundImage: AppAssets.imagesGameCardGreen,
        gameImage: AppAssets.imagesTarneebGameImage,
        gameType: GameType.tarneeb,
      ),

      // bloot
      GameCardModel(
        title: "بلوت",
        backgroundImage: AppAssets.imagesGameCardBlue,
        gameImage: AppAssets.imagesBlootGameImage,
        gameType: GameType.bloot,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          const SizedBox(height: kTopPadding),

          // games list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 25),
              itemCount: availableGames.length,
              itemBuilder: (context, index) => GameCard(
                game: availableGames[index],
              ),
            ),
          ),

          // info button
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 12,
              bottom: 40,
            ),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.info,
                      color: AppColors.primary_300,
                    ),
                    const SizedBox(width: 18),
                    Text(
                      'قوانين الالعاب ',
                      style: AppTextStyles.regular_14.copyWith(
                        color: AppColors.primary_300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
