import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';
import 'package:vibe_games_test/src/core/widgets/game_button.dart';

class BattlePassEndedDisclaimer extends StatelessWidget {
  const BattlePassEndedDisclaimer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      width: 466,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(width: 4, color: AppColors.seasonEndedBorder),
              color: AppColors.seasonEndedPanel,
            ),
            child: Container(
              padding: EdgeInsets.all(40).copyWith(bottom: 28),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    AppColors.seasonEndedShine.withValues(alpha: 0),
                    AppColors.seasonEndedShine.withValues(alpha: 0),
                    AppColors.seasonEndedShine.withValues(alpha: 0.30),
                    AppColors.seasonEndedShine.withValues(alpha: 0),
                    AppColors.seasonEndedShine.withValues(alpha: 0),
                  ],
                  stops: const [0.0, 0.57, 0.79, 0.92, 1.0],
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Battle Pass завершен',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Успей забрать оставшиеся награды!',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.description.copyWith(
                      color: AppColors.textPrimary40,
                    ),
                  ),
                  Spacer(),
                  GameButton(
                    label: '6д 13ч 55м',
                    onPressed: () {},
                    textStyle: AppTextStyles.button.copyWith(
                      color: AppColors.textInverse,
                    ),
                    gradientColors: AppColors.seasonEndedTimerGradientColors,
                    size: Size(214, 52),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: -40,
            child: Align(
              alignment: AlignmentGeometry.topCenter,
              child: const CustomIcon(AppIcons.task_alert, size: 90),
            ),
          ),
        ],
      ),
    );
  }
}
