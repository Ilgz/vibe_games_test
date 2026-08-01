import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_shadows.dart';
import 'package:vibe_games_test/src/core/widgets/game_button.dart';

class MediumGameButton extends StatelessWidget {
  const MediumGameButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.width,
    this.icon,
  });

  final String label;
  final VoidCallback? onPressed;
  final double width;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return GameButton(
      label: label,
      onPressed: onPressed,
      icon: icon,
      gradientColors: AppColors.primaryGradientColors,
      boxShadow: AppShadows.primaryGlow,
      size: Size(width, 100),
    );
  }
}
