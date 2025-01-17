import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_game/Core/utils/app_assets.dart';
import 'package:score_game/Core/widgets/default_background.dart';
import 'package:score_game/Features/Games/presentation/widgets/games_drawer.dart';
import 'package:score_game/Features/Games/presentation/widgets/games_view_body.dart';

class GamesView extends StatelessWidget {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: const GamesDrawer(),
      appBar: _buildAppBar(),
      body: const Stack(
        children: [
          DefaultBackground(),
          GamesViewBody(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('إختار لعبتك'),
      automaticallyImplyLeading: false,
      actions: [
        _buildDrawerButton(),
        const SizedBox(width: 20),
      ],
    );
  }

  Widget _buildDrawerButton() {
    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () => Scaffold.of(context).openEndDrawer(),
        child: SvgPicture.asset(AppAssets.iconsMenu),
      );
    });
  }
}
