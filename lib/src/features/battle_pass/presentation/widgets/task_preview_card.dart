import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/constants/app_images.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';
import 'package:vibe_games_test/src/core/widgets/extra_small_game_button.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/battle_pass_progress_value_text.dart';

class TaskPreviewCard extends StatelessWidget {
  const TaskPreviewCard({super.key, required this.task, this.onTasksPressed});
  final BattlePassTask task;
  final VoidCallback? onTasksPressed;
  @override
  Widget build(BuildContext context) {
    final isNotActive =
        task.targetProgress == task.currentProgress && !task.canBeClaimed;
    return SizedBox(
      width: 400,
      height: 400,
      child: Column(
        children: [
          SizedBox(
            height: 110,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.taskPreviewHeader,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Opacity(
                      opacity: isNotActive ? 0.4 : 1,
                      child: CustomIcon(
                        AppImages.battle_pass_reward_xp,
                        size: 96,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'x ${task.experienceReward}',
                      style: AppTextStyles.descriptionLarge.copyWith(
                        color: isNotActive
                            ? AppColors.textPrimary40
                            : AppColors.textPrimary60,
                      ),
                    ),
                    const Spacer(),
                    _ProgressPill(
                      currentProgress: task.currentProgress,
                      targetProgress: task.targetProgress,
                      isNotActive: isNotActive,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.taskPreviewBody,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  right: 40,
                  top: 54,
                  child: Text(
                    task.description,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.bodyLarge.copyWith(
                      color: isNotActive
                          ? AppColors.textPrimary30
                          : AppColors.textPrimary42,
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  right: 40,
                  top: 140,
                  child: Row(
                    children: [
                      for (var index = 0; index < 5; index++) ...[
                        Expanded(
                          child: Container(
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(999),
                              color: index / 5 < _progressRatio(task)
                                  ? isNotActive
                                        ? AppColors.textPrimary40
                                        : AppColors.textPrimary60
                                  : AppColors.surfaceOverlay12,
                            ),
                          ),
                        ),
                        if (index != 4) const SizedBox(width: 14),
                      ],
                    ],
                  ),
                ),
                Positioned(
                  left: 40,
                  right: 40,
                  bottom: 36,
                  child: ExtraSmallGameButton(
                    label: task.canBeClaimed ? 'Забрать опыт' : 'Задания',
                    onPressed: onTasksPressed,
                    icon: task.canBeClaimed
                        ? null
                        : CustomIcon(
                            AppIcons.tasks,
                            size: 30,
                            color: AppColors.textPrimary,
                          ),
                    gradientColors: task.canBeClaimed
                        ? AppColors.collectMutedGradientColors
                        : AppColors.disabledGradientColors,
                    textColor: task.canBeClaimed
                        ? AppColors.successMuted
                        : AppColors.textPrimary,
                  ),
                ),
                if (isNotActive)
                  const Positioned(
                    right: 28,
                    bottom: 72,
                    child: _WarningMark(),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

double _progressRatio(BattlePassTask task) {
  if (task.targetProgress <= 0) {
    return 1;
  }

  return (task.currentProgress / task.targetProgress).clamp(0, 1);
}

class _ProgressPill extends StatelessWidget {
  const _ProgressPill({
    required this.currentProgress,
    required this.targetProgress,
    required this.isNotActive,
  });

  final int currentProgress;
  final int targetProgress;
  final bool isNotActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.taskProgressPillBackground.withValues(
          alpha: isNotActive ? 0.4 : 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: isNotActive
          ? CustomIcon(AppIcons.reward_claimed, size: 20)
          : BattlePassProgressValueText(
              current: currentProgress,
              target: targetProgress,
            ),
    );
  }
}

class _WarningMark extends StatelessWidget {
  const _WarningMark();

  @override
  Widget build(BuildContext context) {
    return const CustomIcon(AppIcons.task_alert, size: 56);
  }
}
