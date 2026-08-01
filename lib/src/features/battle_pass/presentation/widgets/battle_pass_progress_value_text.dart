import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';

class BattlePassProgressValueText extends StatelessWidget {
  const BattlePassProgressValueText({
    super.key,
    required this.current,
    required this.target,
    this.style = AppTextStyles.progress,
    this.currentColor = AppColors.success,
    this.separatorColor = AppColors.textPrimary60,
    this.targetColor = AppColors.textPrimary60,
    this.textAlign,
  });

  final int current;
  final int target;
  final TextStyle style;
  final Color currentColor;
  final Color separatorColor;
  final Color targetColor;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '$current',
            style: style.copyWith(color: currentColor),
          ),
          TextSpan(
            text: ' / ',
            style: style.copyWith(color: separatorColor),
          ),
          TextSpan(
            text: '$target',
            style: style.copyWith(color: targetColor),
          ),
        ],
      ),
      textAlign: textAlign,
    );
  }
}
