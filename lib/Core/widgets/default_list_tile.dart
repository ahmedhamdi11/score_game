import 'package:flutter/material.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';

class DefaultListTile extends StatelessWidget {
  const DefaultListTile({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onTap: onPressed,
        title: Text(
          title,
          style: AppTextStyles.regular_21.copyWith(
            color: AppColors.secondary_400,
          ),
        ),
      ),
    );
  }
}
