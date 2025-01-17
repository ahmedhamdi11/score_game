import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_game/Core/utils/app_assets.dart';
import 'package:score_game/Core/widgets/default_background.dart';
import 'package:score_game/Features/Games/presentation/widgets/games_view_body.dart';

class GamesView extends StatelessWidget {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('إختار لعبتك'),
        actions: [
          SvgPicture.asset(AppAssets.iconsMenu),
          const SizedBox(width: 20),
        ],
      ),
      body: const Stack(
        children: [
          DefaultBackground(),
          GamesViewBody(),
        ],
      ),
    );
  }
}
