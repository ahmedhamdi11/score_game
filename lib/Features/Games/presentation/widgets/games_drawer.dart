import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:score_game/Core/theme/colors.dart';
import 'package:score_game/Core/utils/app_assets.dart';
import 'package:score_game/Core/widgets/default_list_tile.dart';

class GamesDrawer extends StatelessWidget {
  const GamesDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(24),
          bottomStart: Radius.circular(24),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.startPlayerGradient,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 40),

                // header icon
                SvgPicture.asset(
                  AppAssets.iconsMenu,
                  colorFilter: const ColorFilter.mode(
                    AppColors.secondary_400,
                    BlendMode.srcIn,
                  ),
                ),

                const SizedBox(height: 45),

                // drawer content
                SingleChildScrollView(
                  child: Column(
                    children: [
                      // trix history
                      DefaultListTile(
                        onPressed: () {},
                        title: 'سجل تريكس',
                      ),

                      const Divider(
                        color: AppColors.secondary_400,
                        endIndent: 25,
                      ),

                      // tarneeb history
                      DefaultListTile(
                        onPressed: () {},
                        title: 'سجل طرنيب',
                      ),

                      const Divider(
                        color: AppColors.secondary_400,
                        endIndent: 25,
                      ),
                      // baloot history
                      DefaultListTile(
                        onPressed: () {},
                        title: 'سجل بلوت',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
