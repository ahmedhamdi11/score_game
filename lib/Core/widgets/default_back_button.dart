import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_game/Core/utils/app_assets.dart';

class DefaultBackButton extends StatelessWidget {
  const DefaultBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 20),
      child: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset(
          AppAssets.iconsBackArrow,
        ),
      ),
    );
  }
}
