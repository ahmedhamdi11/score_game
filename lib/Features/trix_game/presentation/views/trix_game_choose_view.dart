import 'package:flutter/material.dart';
import 'package:score_game/Core/constants/constants.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/widgets/default_back_button.dart';
import 'package:score_game/Core/widgets/default_background.dart';
import 'package:score_game/Features/trix_game/presentation/widgets/game_choose_widgets/game_choose_view_body.dart';

class TrixGameChooseView extends StatelessWidget {
  const TrixGameChooseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: const Stack(
        children: [
          DefaultBackground(
            gradient: AppColors.redRadialGradient,
          ),
          Padding(
            padding: EdgeInsets.only(top: kTopPadding, left: 24, right: 24),
            child: GameChooseViewBody(),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'تريكس',
        style: AppTextStyles.bold_36.copyWith(
          shadows: AppColors.textShadows(),
        ),
      ),
      automaticallyImplyLeading: false,
      actions: const [
        DefaultBackButton(),
      ],
    );
  }
}
