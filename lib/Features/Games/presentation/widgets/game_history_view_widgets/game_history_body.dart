import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Features/Games/presentation/widgets/game_history_view_widgets/history_table.dart';

class GameHistoryBody extends StatelessWidget {
  const GameHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 30),
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
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(height: 24),
          Text(
            'السجلات',
            style: AppTextStyles.regular_28.copyWith(
              color: AppColors.black,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'السبت 18/01/2025',
            style: AppTextStyles.regular_21.copyWith(
              color: AppColors.red_500,
            ),
          ),
          const SizedBox(height: 16),

          // table
          const HistoryTable(),

          const SizedBox(height: 16),

          const HistoryTable(),
        ],
      ),
    );
  }
}
