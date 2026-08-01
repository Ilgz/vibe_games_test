import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/back_button.dart' as game_back;
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_experience.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/battle_pass_progress_value_text.dart';

class SeasonHeader extends StatelessWidget {
  const SeasonHeader({
    super.key,
    required this.experience,
    required this.title,
    this.postWidget,
    this.timerHasBackground = false,
    this.canGoBack = false,
  });

  final BattlePassExperience experience;
  final Widget title;
  final Widget? postWidget;
  final bool timerHasBackground;
  final bool canGoBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (canGoBack) ...[
          GestureDetector(
            onTap: () => Navigator.of(context).maybePop(),
            behavior: HitTestBehavior.opaque,
            child: const game_back.BackButton(),
          ),
          const SizedBox(width: 24),
        ],
        _LevelRing(experience: experience),
        const SizedBox(width: 40),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  padding: timerHasBackground
                      ? const EdgeInsets.symmetric(vertical: 8, horizontal: 16)
                      : null,
                  decoration: timerHasBackground
                      ? BoxDecoration(
                          color: AppColors.surfaceOverlay7,
                          borderRadius: BorderRadius.circular(30),
                        )
                      : null,
                  child: Row(
                    children: [
                      CustomIcon(
                        AppIcons.timer,
                        size: 32,
                        color: AppColors.textPrimary42,
                      ),
                      const SizedBox(width: 14),
                      Text(
                        '15д 12ч 42м',
                        style: AppTextStyles.descriptionLarge.copyWith(
                          color: AppColors.textPrimary42,
                        ),
                      ),
                    ],
                  ),
                ),
                if (postWidget != null) ...[
                  const SizedBox(width: 24),
                  postWidget!,
                ],
              ],
            ),
            const SizedBox(height: 8),
            DefaultTextStyle(style: AppTextStyles.displayLarge, child: title),
          ],
        ),
      ],
    );
  }
}

class _LevelRing extends StatelessWidget {
  const _LevelRing({required this.experience});

  final BattlePassExperience experience;

  @override
  Widget build(BuildContext context) {
    final activeColor = experience.hasXpBuff
        ? AppColors.xpBuff
        : AppColors.textPrimary;
    final requiredExperience = experience.requiredExperience;
    final value = requiredExperience <= 0
        ? 1.0
        : experience.currentExperience / requiredExperience;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.square(
          dimension: 100,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: value.clamp(0, 1),
                strokeWidth: 12,
                backgroundColor: activeColor.withValues(alpha: 0.1),
                color: activeColor.withValues(alpha: 0.6),
                strokeCap: StrokeCap.square,
              ),
              Center(
                child: Text(
                  '${experience.level}',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.displayLarge.copyWith(
                    color: activeColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        BattlePassProgressValueText(
          current: experience.currentExperience,
          target: experience.requiredExperience,
          currentColor: activeColor,
          separatorColor: activeColor.withValues(alpha: 0.4),
          targetColor: activeColor.withValues(alpha: 0.4),
        ),
      ],
    );
  }
}
