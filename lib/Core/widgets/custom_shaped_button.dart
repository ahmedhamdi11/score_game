import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';

class CustomShapedButton extends StatelessWidget {
  const CustomShapedButton({
    super.key,
    required this.onTap,
    required this.btnText,
  });

  final void Function() onTap;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      return GestureDetector(
        onTap: onTap,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            _buildButtonShape(),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 16, start: 2),
              child: SizedBox(
                width: c.maxWidth / 1.5,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    btnText,
                    maxLines: 1,
                    style: AppTextStyles.bold_21.copyWith(
                      color: AppColors.secondary_400,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }

  Stack _buildButtonShape() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 300),
          child: SvgPicture.asset(
            AppAssets.imagesCustomButtonShape,
            fit: BoxFit.fill,
            colorFilter: const ColorFilter.mode(
              Color(0xff806400),
              BlendMode.srcIn,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(bottom: 4, end: 3),
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(maxWidth: 300),
            child: SvgPicture.asset(
              AppAssets.imagesCustomButtonShape,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
