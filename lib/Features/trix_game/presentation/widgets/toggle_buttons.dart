import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_cubit.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_state.dart';

class TrixSingleMultiToggle extends StatelessWidget {
  const TrixSingleMultiToggle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TrixCubit>();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: AppColors.red_300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: BlocSelector<TrixCubit, TrixState, GamePlayersType>(
        selector: (state) => state.selectedType,
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: _ToggleItem(
                  onTap: () => cubit.setGameTypeToIndividual(),
                  isSelected: state == GamePlayersType.individual,
                  btnText: 'فردي',
                ),
              ),
              const SizedBox(width: 22),
              Expanded(
                child: _ToggleItem(
                  onTap: () => cubit.setGameTypeToTeam(),
                  isSelected: state == GamePlayersType.team,
                  btnText: 'فريق',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ToggleItem extends StatelessWidget {
  const _ToggleItem({
    required this.onTap,
    required this.isSelected,
    required this.btnText,
  });

  final void Function() onTap;
  final bool isSelected;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.white,
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
            horizontal: 36,
            vertical: 12,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: isSelected ? AppColors.startPlayerGradient : null,
            border: Border.all(color: AppColors.white),
          ),
          child: Text(
            btnText,
            style: AppTextStyles.bold_16.copyWith(
              color: isSelected ? AppColors.white : AppColors.secondary_400,
            ),
          ),
        ),
      ),
    );
  }
}
