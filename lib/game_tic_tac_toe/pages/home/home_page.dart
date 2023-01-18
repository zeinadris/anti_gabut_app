import 'package:anti_gabut_app/menu/menu_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/circle_widget.dart';
import '../../widgets/cross_widget.dart';
import '../game/game_page.dart';

part 'game_title_widget.dart';
part 'game_mode_selection_widget.dart';

class TicTacPage extends StatelessWidget {
  const TicTacPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Spacer(flex: 2),
          GameTitleWidget(),
          Spacer(),
          GameModeSelectionWidget(),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
