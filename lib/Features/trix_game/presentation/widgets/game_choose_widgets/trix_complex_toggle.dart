import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_cubit.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_state.dart';

class TrixComplexToggle extends StatelessWidget {
  const TrixComplexToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TrixCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocSelector<TrixCubit, TrixState, TrixGameType>(
        selector: (state) => state.trixGameType,
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: _ButtonItem(
                  onPressed: () =>
                      cubit.toggleTrixAndComplex(TrixGameType.trix),
                  btnText: 'تريكس',
                  isSelected: state == TrixGameType.trix,
                ),
              ),
              Expanded(
                child: _ButtonItem(
                  onPressed: () =>
                      cubit.toggleTrixAndComplex(TrixGameType.complex),
                  btnText: 'تريكس',
                  isSelected: state == TrixGameType.complex,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ButtonItem extends StatelessWidget {
  const _ButtonItem({
    required this.onPressed,
    required this.btnText,
    required this.isSelected,
  });

  final void Function() onPressed;
  final String btnText;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: onPressed,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.red_500,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 5),
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: AppColors.white,
                gradient: isSelected
                    ? const LinearGradient(colors: [Colors.white, Colors.white])
                    : AppColors.redLinearGradient(
                        begin: AlignmentDirectional.centerEnd,
                        end: AlignmentDirectional.centerStart,
                      ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                  gradient: isSelected
                      ? AppColors.redLinearGradient(
                          begin: AlignmentDirectional.centerEnd,
                          end: AlignmentDirectional.centerStart,
                        )
                      : const LinearGradient(
                          colors: [Colors.white, Colors.white],
                        ),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    btnText,
                    style: AppTextStyles.bold_21.copyWith(
                      color: isSelected ? AppColors.white : AppColors.red_500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
