import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/colors.dart';

class GameHistoryBody extends StatelessWidget {
  const GameHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -4),
            color: AppColors.black.withOpacity(0.5),
            blurRadius: 4,
          )
        ],
      ),
    );
  }
}
