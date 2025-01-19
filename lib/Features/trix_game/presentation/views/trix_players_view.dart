import 'package:flutter/material.dart';
import 'package:score_game/Core/constants/constants.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/widgets/default_back_button.dart';
import 'package:score_game/Core/widgets/default_background.dart';
import 'package:score_game/Features/trix_game/presentation/widgets/players_view_widgets/trix_players_body.dart';

class TrixPlayersView extends StatelessWidget {
  const TrixPlayersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: const Stack(
        children: [
          DefaultBackground(
            gradient: AppColors.redRadialGradient,
            opacity: 0.7,
          ),
          Padding(
            padding: EdgeInsets.only(top: kTopPadding, left: 24, right: 24),
            child: TrixPlayersBody(),
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
