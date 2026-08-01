import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/widgets/game_circle_icon_button.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const GameCircleIconButton(icon: AppIcons.back);
  }
}
