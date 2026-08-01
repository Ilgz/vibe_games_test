import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/game_button.dart';

class ExtraSmallGameButton extends StatelessWidget {
  const ExtraSmallGameButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.gradientColors,
    this.width = double.infinity,
    this.height = 74,
    this.icon,
    this.textColor = AppColors.textPrimary,
    this.fontSize = 26,
    this.borderRadius,
  });

  final String label;
  final VoidCallback? onPressed;
  final List<Color> gradientColors;
  final double width;
  final double height;
  final Widget? icon;
  final Color textColor;
  final double fontSize;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GameButton(
      label: label,
      onPressed: onPressed,
      icon: icon,
      gradientColors: gradientColors,
      size: Size(width, height),
      textStyle: AppTextStyles.title.copyWith(
        color: textColor,
        fontSize: fontSize,
      ),
      borderRadius: borderRadius ?? BorderRadius.circular(30),
    );
  }
}
