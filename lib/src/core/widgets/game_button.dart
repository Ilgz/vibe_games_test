import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/animated_tap_widget.dart';

class GameButton extends StatelessWidget {
  const GameButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.gradientColors,
    required this.size,
    this.boxShadow,
    this.icon,
    this.textStyle,
    this.borderRadius,
    this.maxLines,
  });

  final String label;
  final VoidCallback? onPressed;
  final Widget? icon;
  final List<Color> gradientColors;
  final List<BoxShadow>? boxShadow;
  final Size size;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return AnimatedTapWidget(
      onTap: onPressed,
      enabled: onPressed != null,
      child: AnimatedContainer(
        height: size.height,
        width: size.width,
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadiusGeometry.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: gradientColors,
          ),
          boxShadow: boxShadow,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[icon!, const SizedBox(width: 24)],
            Flexible(
              child: Text(
                label,
                textAlign: TextAlign.center,
                maxLines: maxLines ?? 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.button.merge(textStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
