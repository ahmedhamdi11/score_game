import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';

class TrixSingleMultiToggle extends StatelessWidget {
  const TrixSingleMultiToggle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            _ToggleItem(
              onTap: () {},
              isSelected: false,
              btnText: 'فردي',
            ),
            const SizedBox(width: 22),
            _ToggleItem(
              onTap: () {},
              isSelected: false,
              btnText: 'فريق',
            ),
          ],
        ),
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
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(
          horizontal: 36,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          gradient: isSelected ? AppColors.startPlayerGradient : null,
          border: Border.all(color: AppColors.white),
        ),
        child: Text(
          btnText,
          style: AppTextStyles.bold_16,
        ),
      ),
    );
  }
}
