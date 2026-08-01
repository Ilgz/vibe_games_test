import 'package:flutter/material.dart' hide CloseButton;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibe_games_test/src/core/constants/app_images.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/close_button.dart';
import 'package:vibe_games_test/src/core/widgets/design_scaled_stage.dart';
import 'package:vibe_games_test/src/core/widgets/design_safe_area.dart';
import 'package:vibe_games_test/src/core/widgets/gradient_text.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/datasources/battle_pass_mock_data_source.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/demo/battle_pass_demo_scenario.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/repositories/battle_pass_repository_impl.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_season.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_snapshot.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/cubit/battle_pass_cubit.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/cubit/battle_pass_state.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/models/battle_pass_reward_track_item.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/battle_pass_ended_disclaimer.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/premium_banner.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/reward_big_item_widget.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/reward_track.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/season_header.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/task_preview_card.dart';
import 'package:vibe_games_test/src/core/widgets/custom_navigation_bar.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/pages/tasks_page.dart';

class BattlePassPage extends StatelessWidget {
  const BattlePassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BattlePassCubit(
        repository: const BattlePassRepositoryImpl(
          dataSource: BattlePassMockDataSource(),
        ),
        initialScenario: BattlePassDemoScenario.premiumNotPurchased,
      )..load(),
      child: const _BattlePassView(),
    );
  }
}

class _BattlePassView extends StatelessWidget {
  const _BattlePassView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: BlocBuilder<BattlePassCubit, BattlePassState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (snapshot, scenario, rewardTrackItems) => DesignScaledStage(
              child: DesignSafeArea(
                builder: (_, safeInsets) => _BattlePassStage(
                  snapshot: snapshot,
                  scenario: scenario,
                  rewardTrackItems: rewardTrackItems,
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

class _BattlePassStage extends StatefulWidget {
  const _BattlePassStage({
    required this.snapshot,
    required this.scenario,
    required this.rewardTrackItems,
    required this.safeInsets,
  });

  final BattlePassSnapshot snapshot;
  final BattlePassDemoScenario scenario;
  final List<BattlePassRewardTrackItem> rewardTrackItems;
  final EdgeInsets safeInsets;

  @override
  State<_BattlePassStage> createState() => _BattlePassStageState();
}

class _BattlePassStageState extends State<_BattlePassStage> {
  bool? _isPremiumOverride;
  bool? _isMaxedOutOverride;

  @override
  void didUpdateWidget(covariant _BattlePassStage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.scenario != widget.scenario) {
      _isPremiumOverride = null;
      _isMaxedOutOverride = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedReward = widget.rewardTrackItems.firstWhere(
      (reward) => reward.isSelected,
      orElse: () => widget.rewardTrackItems.first,
    );
    final premiumBannerState = _resolvedPremiumBannerState();
    final canCollectMultiReward =
        widget.rewardTrackItems
            .where((reward) => reward.canBeClaimed && !reward.hasClaimed)
            .length >=
        2;

    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(AppImages.battle_pass_bg, fit: BoxFit.cover),
        ),
        Positioned.fill(
          child: Row(
            children: [
              CustomNavigationBar(leftSafeInset: widget.safeInsets.left),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 32,
                    top: 32,
                    right: 32 + widget.safeInsets.right,
                    bottom: 32,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SeasonHeader(
                                    experience: widget
                                        .snapshot
                                        .playerProgress
                                        .experience,
                                    title: GradientText(
                                      Text(
                                        'Дай пять!',
                                        style: AppTextStyles.displayLarge,
                                      ),
                                      gradient: const LinearGradient(
                                        colors: AppColors
                                            .battlePassTitleGradientColors,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 32),
                                  if (widget.snapshot.season.isFinishedAt(
                                    DateTime.now(),
                                  ))
                                    Padding(
                                      padding: EdgeInsetsGeometry.only(top: 80),
                                      child: BattlePassEndedDisclaimer(),
                                    )
                                  else
                                    TaskPreviewCard(
                                      task: widget
                                          .snapshot
                                          .season
                                          .tasks[widget.scenario.index],
                                      onTasksPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute<void>(
                                            builder: (_) => const TasksPage(),
                                          ),
                                        );
                                      },
                                    ),
                                ],
                              ),
                            ),
                            RewardBigItemWidget(reward: selectedReward),
                            Expanded(
                              child: PremiumBanner(
                                isPremium: premiumBannerState.isPremium,
                                isMaxedOut: premiumBannerState.isMaxedOut,
                                canCollectMultiReward: canCollectMultiReward,
                                onUpgradePressed: () =>
                                    _handleUpgradePressed(premiumBannerState),
                                onCollectAllPressed: context
                                    .read<BattlePassCubit>()
                                    .claimAllRewardItems,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 320,
                        child: RewardTrack(
                          rewards: widget.rewardTrackItems,
                          showPremiumSuggestion:
                              !premiumBannerState.isPremium,
                          onPremiumSuggestionPressed: () =>
                              _handleUpgradePressed(premiumBannerState),
                          onRewardSelected: context
                              .read<BattlePassCubit>()
                              .selectRewardItem,
                          onRewardClaimed: context
                              .read<BattlePassCubit>()
                              .claimRewardItem,
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
          right: 32 + widget.safeInsets.right,
          top: 50,
          child: const CloseButton(),
        ),
      ],
    );
  }

  ({bool isPremium, bool isMaxedOut}) _resolvedPremiumBannerState() {
    final baseState = _premiumBannerStateFor(widget.scenario);

    if (widget.scenario != BattlePassDemoScenario.premiumNotPurchased) {
      return baseState;
    }

    return (
      isPremium: _isPremiumOverride ?? baseState.isPremium,
      isMaxedOut: _isMaxedOutOverride ?? baseState.isMaxedOut,
    );
  }

  void _handleUpgradePressed(({bool isPremium, bool isMaxedOut}) state) {
    if (widget.scenario != BattlePassDemoScenario.premiumNotPurchased) {
      return;
    }

    if (!state.isPremium) {
      setState(() {
        _isPremiumOverride = true;
        _isMaxedOutOverride = false;
      });
      return;
    }

    if (!state.isMaxedOut) {
      setState(() {
        _isMaxedOutOverride = true;
      });
    }
  }
}

({bool isPremium, bool isMaxedOut}) _premiumBannerStateFor(
  BattlePassDemoScenario scenario,
) {
  return switch (scenario) {
    BattlePassDemoScenario.premiumNotPurchased => (
      isPremium: false,
      isMaxedOut: false,
    ),
    BattlePassDemoScenario.premiumPurchasedRewardAvailable => (
      isPremium: true,
      isMaxedOut: false,
    ),
    BattlePassDemoScenario.maxLevelManyRewards => (
      isPremium: true,
      isMaxedOut: true,
    ),
    BattlePassDemoScenario.premiumPurchasedNoRewards => (
      isPremium: true,
      isMaxedOut: false,
    ),
    BattlePassDemoScenario.maxLevelNoRewards => (
      isPremium: true,
      isMaxedOut: true,
    ),
    BattlePassDemoScenario.seasonFinished => (
      isPremium: true,
      isMaxedOut: false,
    ),
    BattlePassDemoScenario.rewardsEndedPremium => (
      isPremium: true,
      isMaxedOut: false,
    ),
    BattlePassDemoScenario.rewardsEndedFree => (
      isPremium: true,
      isMaxedOut: false,
    ),
  };
}
