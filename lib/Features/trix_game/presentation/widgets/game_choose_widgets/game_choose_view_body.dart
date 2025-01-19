import 'package:flutter/material.dart';
import 'package:score_game/Core/widgets/custom_shaped_button.dart';
import 'package:score_game/Features/trix_game/presentation/widgets/game_choose_widgets/choose_players_circles.dart';
import 'package:score_game/Features/trix_game/presentation/widgets/game_choose_widgets/round_starts_with_card.dart';
import 'package:score_game/Features/trix_game/presentation/widgets/game_choose_widgets/trix_complex_toggle.dart';

class GameChooseViewBody extends StatelessWidget {
  const GameChooseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),

        // round starts with card
        const RoundStartsWithCard(),

        const SizedBox(height: 25),

        // choose players circles
        const Expanded(
          child: ChoosePlayersCircles(
            circleOne: 'محمد',
            circleTwo: 'أحمد',
            circleThree: 'محمود',
            circleFour: 'عبدالله',
          ),
        ),

        const SizedBox(height: 25),

        const TrixComplexToggle(),

        const SizedBox(height: 40),

        FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            width: 200,
            height: 82,
            child: CustomShapedButton(
              onTap: () {},
              btnText: "إبدأ اللعب",
            ),
          ),
        ),

        const SizedBox(height: 30),
      ],
    );
  }
}
