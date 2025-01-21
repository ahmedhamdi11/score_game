import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';

class DefaultGradientButton extends StatelessWidget {
  const DefaultGradientButton({
    super.key,
    required this.onTap,
    required this.btnText,
  });

  final void Function()? onTap;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 38,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: AppColors.redLinearGradient(
            begin: AlignmentDirectional.centerEnd,
            end: AlignmentDirectional.centerStart,
          ),
        ),
        child: Text(
          btnText,
          style: AppTextStyles.bold_16.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
