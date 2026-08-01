import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/constants/app_images.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/animated_tap_widget.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';
import 'package:vibe_games_test/src/core/widgets/game_button.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/battle_pass_progress_value_text.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.task,
    this.onQuestionPressed,
  });

  final BattlePassTask task;
  final VoidCallback? onQuestionPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 394,
      height: 502,
      child: Column(
        children: [
          SizedBox(
            height: 161,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.taskCardHeader,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    CustomIcon(AppImages.battle_pass_reward_xp, size: 96),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 48,
                            decoration: BoxDecoration(
                              color: AppColors.taskRewardBadge,
                              borderRadius: BorderRadiusGeometry.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'Опыт БП',
                                style: AppTextStyles.progress.copyWith(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'x ${task.experienceReward}',
                            style: AppTextStyles.display.copyWith(
                              color: AppColors.textPrimary60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: AppColors.taskCardBody,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  BattlePassProgressValueText(
                    current: task.currentProgress,
                    target: task.targetProgress,
                    style: AppTextStyles.progressLarge,
                    targetColor: AppColors.textPrimary,
                  ),
                  SizedBox(height: 12),
                  Divider(
                    height: 2,
                    thickness: 2,
                    color: AppColors.surfaceOverlay10,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        task.description,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.bodyLarge.copyWith(
                          color: AppColors.textPrimary80,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 88,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: GameButton(
                            label: task.canBeClaimed ? 'Готово' : 'Перейти',
                            onPressed: () {},
                            gradientColors: task.canBeClaimed
                                ? AppColors.taskActionDisabledGradientColors
                                : AppColors.taskActionGradientColors,
                            size: Size(double.infinity, double.infinity),
                            textStyle: AppTextStyles.buttonMedium.copyWith(
                              color: AppColors.textPrimary,
                            ),
                            icon: task.canBeClaimed
                                ? CustomIcon(AppIcons.reward_claimed, size: 20)
                                : null,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(30),
                              right: Radius.circular(6),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        AnimatedTapWidget(
                          onTap: onQuestionPressed ?? () {},
                          child: Container(
                            width: 60,
                            decoration: BoxDecoration(
                              color: AppColors.taskCardHeader,
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(6),
                                right: Radius.circular(30),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: CustomIcon(AppIcons.question, size: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
