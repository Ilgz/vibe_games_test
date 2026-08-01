import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/widgets/animated_tap_widget.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';

class GameCircleIconButton extends StatelessWidget {
  const GameCircleIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.size = 100,
    this.iconSize = 27,
  });

  final String icon;
  final VoidCallback? onPressed;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedTapWidget(
      onTap: onPressed,
      enabled: onPressed != null,
      pressedScale: 0.86,
      duration: const Duration(milliseconds: 140),
      child: Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.surfaceOverlay5,
        ),
        child: CustomIcon(
          icon,
          size: iconSize,
          color: AppColors.textPrimary70,
        ),
      ),
    );
  }
}
