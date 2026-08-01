import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/constants/app_images.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/close_button.dart'
    as game_close;
import 'package:vibe_games_test/src/core/widgets/custom_navigation_bar.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';
import 'package:vibe_games_test/src/core/widgets/design_scaled_stage.dart';
import 'package:vibe_games_test/src/core/widgets/design_safe_area.dart';
import 'package:vibe_games_test/src/core/widgets/medium_game_button.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/datasources/tasks_mock_data_source.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/repositories/tasks_repository_impl.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_experience.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/cubit/tasks_cubit.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/cubit/tasks_state.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/season_header.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/task_card.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TasksCubit(
        repository: const TasksRepositoryImpl(
          dataSource: TasksMockDataSource(),
        ),
      )..load(),
      child: const _TasksView(),
    );
  }
}

class _TasksView extends StatelessWidget {
  const _TasksView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: BlocBuilder<TasksCubit, TasksState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (tasks, experience) => DesignScaledStage(
              child: DesignSafeArea(
                builder: (_, safeInsets) => _TasksStage(
                  tasks: tasks,
                  experience: experience,
                  safeInsets: safeInsets,
                ),
              ),
            ),
            failure: (message) => Center(
              child: Text(
                message,
                style: AppTextStyles.title,
                textAlign: TextAlign.center,
              ),
            ),
            orElse: () => const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            ),
          );
        },
      ),
    );
  }
}

class _TasksStage extends StatelessWidget {
  const _TasksStage({
    required this.tasks,
    required this.experience,
    required this.safeInsets,
  });

  final List<BattlePassTask> tasks;
  final BattlePassExperience experience;
  final EdgeInsets safeInsets;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(AppImages.battle_pass_tasks_bg, fit: BoxFit.cover),
        ),
        Positioned.fill(
          child: Row(
            children: [
              CustomNavigationBar(leftSafeInset: safeInsets.left),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 32,
                          right: 32 + safeInsets.right,
                        ),
                        child: SeasonHeader(
                          experience: experience,
                          canGoBack: true,
                          title: Text(
                            'Задание боевого пропуска',
                            style: AppTextStyles.displayLarge.copyWith(
                              color: AppColors.textPrimary40,
                            ),
                          ),
                          postWidget: Text(
                            'До обновления заданий',
                            style: AppTextStyles.descriptionLarge.copyWith(
                              color: AppColors.taskResetText,
                            ),
                          ),
                          timerHasBackground: true,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: SizedBox(
                            height: 520,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsetsGeometry.only(
                                left: 32,
                                right: 32 + safeInsets.right,
                              ),
                              itemCount: tasks.length,
                              separatorBuilder: (_, _) =>
                                  const SizedBox(width: 28),
                              itemBuilder: (context, index) {
                                final task = tasks[index];

                                return Center(child: TaskCard(task: task));
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 32,
                          right: 32 + safeInsets.right,
                        ),
                        child: Row(
                          children: [
                            MediumGameButton(
                              label: 'Прокачать',
                              width: 400,
                              icon: CustomIcon(AppIcons.premium, size: 30),
                              onPressed: () {},
                            ),
                            const SizedBox(width: 32),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'На ',
                                    style: AppTextStyles.promo.copyWith(
                                      color: AppColors.textPrimary60,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '25%',
                                    style: AppTextStyles.promo.copyWith(
                                      color: AppColors.primaryHigh,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' быстрее с прокачкой!',
                                    style: AppTextStyles.promo.copyWith(
                                      color: AppColors.textPrimary60,
                                    ),
                                  ),
                                ],
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
        ),
        Positioned(
          right: 32 + safeInsets.right,
          top: 50,
          child: const game_close.CloseButton(),
        ),
      ],
    );
  }
}
