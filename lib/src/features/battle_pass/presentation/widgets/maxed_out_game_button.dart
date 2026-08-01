import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/game_button.dart';

class MaxedOutGameButton extends StatelessWidget {
  const MaxedOutGameButton({
    super.key,
    required this.label,
    required this.width,
    this.height = 100,
  });

  final String label;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GameButton(
      label: label,
      onPressed: null,
      gradientColors: AppColors.disabledGradientColors,
      size: Size(width, height),
      textStyle: AppTextStyles.buttonMedium.copyWith(
        color: AppColors.textPrimary40,
      ),
      maxLines: 2,
    );
  }
}
