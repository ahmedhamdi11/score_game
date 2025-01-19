import 'package:flutter/material.dart';
import 'package:score_game/Features/trix_game/presentation/widgets/game_choose_widgets/round_starts_with_card.dart';

class GameChooseViewBody extends StatelessWidget {
  const GameChooseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        RoundStartsWithCard(),
      ],
    );
  }
}
