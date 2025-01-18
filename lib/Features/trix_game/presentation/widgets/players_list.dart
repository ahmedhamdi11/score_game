import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Core/widgets/default_animated_switcher.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_cubit.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_state.dart';

class PlayersList extends StatelessWidget {
  const PlayersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsetsDirectional.only(start: 10),
      children: [
        // team 1 header
        _teamHeader('الفريق الاول'),

        _playerName('اللاعب الاول', 'أحمد'),
        _playerName('اللاعب الثاني', 'أحمد'),

        // team 2 header
        _teamHeader('الفريق الثاني'),

        _playerName('اللاعب الثالث', 'أحمد'),
        _playerName('اللاعب الرابع', 'أحمد'),
      ],
    );
  }

  Widget _teamHeader(String title) {
    return BlocSelector<TrixCubit, TrixState, GamePlayersType>(
      selector: (state) => state.selectedType,
      builder: (context, gameType) {
        return DefaultAnimatedSwitcher(
          transitionType: DefaultAnimatedSwitcherTransition.size,
          duration: const Duration(milliseconds: 350),
          reverseDuration: const Duration(milliseconds: 350),
          switchInCurve: Curves.ease,
          switchOutCurve: Curves.ease,
          child: SizedBox(
            key: ValueKey(
              gameType == GamePlayersType.team,
            ),
            child: gameType == GamePlayersType.team
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.bold_20.copyWith(
                        color: AppColors.red_500,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        );
      },
    );
  }

  Widget _playerName(String title, String name) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: AppTextStyles.regular_21,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: AppTextStyles.regular_21,
            ),
          ),
        ],
      ),
    );
  }
}
