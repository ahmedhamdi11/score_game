import 'package:flutter/material.dart';
import 'package:score_game/Core/constants/constants.dart';
import 'package:score_game/Core/theme/app_text_styles.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/widgets/default_back_button.dart';
import 'package:score_game/Core/widgets/default_background.dart';
import 'package:score_game/Features/Games/presentation/widgets/game_history_view_widgets/game_history_body.dart';

class TrixHistoryView extends StatelessWidget {
  const TrixHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: const Stack(
        children: [
          DefaultBackground(),
          Padding(
            padding: EdgeInsets.only(top: kTopPadding),
            child: GameHistoryBody(),
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
