import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_shadows.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/animated_tap_widget.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/models/battle_pass_reward_track_item.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/reward_widget.dart'
    show RewardWidget;

class RewardTrack extends StatefulWidget {
  const RewardTrack({
    super.key,
    required this.rewards,
    required this.onRewardSelected,
    required this.onRewardClaimed,
    this.showPremiumSuggestion = false,
    this.onPremiumSuggestionPressed,
  });

  final List<BattlePassRewardTrackItem> rewards;
  final ValueChanged<int> onRewardSelected;
  final ValueChanged<int> onRewardClaimed;
  final bool showPremiumSuggestion;
  final VoidCallback? onPremiumSuggestionPressed;

  @override
  State<RewardTrack> createState() => _RewardTrackState();
}

class _RewardTrackState extends State<RewardTrack> {
  final ScrollController _scrollController = ScrollController();

  bool _canScrollLeft = false;
  bool _canScrollRight = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateScrollFlags);
    WidgetsBinding.instance.addPostFrameCallback((_) => _updateScrollFlags());
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_updateScrollFlags)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final progressIndex = _progressIndex(widget.rewards);
    final scrollableRewards = widget.rewards
        .take(_scrollableRewardsCount)
        .toList();
    final bossReward = widget.rewards[13];

    return Row(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeOutCubic,
          transitionBuilder: _suggestionTransition,
          child: widget.showPremiumSuggestion
              ? Row(
                  key: const ValueKey('premium_suggestion'),
                  children: [
                    _PremiumSuggestionStrip(
                      rewards: widget.rewards
                          .take(_premiumSuggestionItemsCount)
                          .toList(),
                      onPressed: widget.onPremiumSuggestionPressed,
                    ),
                    const _RewardTrackArrowSeparator(),
                  ],
                )
              : const SizedBox.shrink(key: ValueKey('premium_suggestion_empty')),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRect(
                  child: ShaderMask(
                    blendMode: BlendMode.dstIn,
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        colors: [
                          _canScrollLeft
                              ? AppColors.transparent
                              : AppColors.textPrimary,
                          AppColors.textPrimary,
                          AppColors.textPrimary,
                          _canScrollRight
                              ? AppColors.transparent
                              : AppColors.textPrimary,
                        ],
                        stops: const [0, 0.08, 0.92, 1],
                      ).createShader(bounds);
                    },
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.hardEdge,
                      child: _ScrollableRewardTrackContent(
                        rewards: scrollableRewards,
                        progressIndex: progressIndex,
                        onRewardSelected: widget.onRewardSelected,
                        onRewardClaimed: widget.onRewardClaimed,
                      ),
                    ),
                  ),
                ),
              ),
              if (_canScrollLeft)
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: _RewardTrackScrollButton(
                      direction: _ScrollDirection.left,
                      onPressed: () => _scrollBy(-1),
                    ),
                  ),
                ),
              if (_canScrollRight)
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: _RewardTrackScrollButton(
                      direction: _ScrollDirection.right,
                      onPressed: () => _scrollBy(1),
                    ),
                  ),
                ),
            ],
          ),
        ),
        _BossRewardTrackContent(
          reward: bossReward,
          showLeftConnector: !_canScrollRight,
          index: 13,
          progressIndex: progressIndex,
          onRewardSelected: widget.onRewardSelected,
          onRewardClaimed: widget.onRewardClaimed,
        ),
      ],
    );
  }

  Widget _suggestionTransition(Widget child, Animation<double> animation) {
    return FadeTransition(
      opacity: animation,
      child: SizeTransition(
        sizeFactor: animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: child,
      ),
    );
  }

  void _updateScrollFlags() {
    if (!_scrollController.hasClients || !mounted) {
      return;
    }

    const epsilon = 1.0;
    final position = _scrollController.position;
    final canScrollLeft = position.pixels > epsilon;
    final canScrollRight = position.pixels < position.maxScrollExtent - epsilon;

    if (_canScrollLeft == canScrollLeft && _canScrollRight == canScrollRight) {
      return;
    }

    setState(() {
      _canScrollLeft = canScrollLeft;
      _canScrollRight = canScrollRight;
    });
  }

  void _scrollBy(int direction) {
    if (!_scrollController.hasClients) {
      return;
    }

    final position = _scrollController.position;
    final step = position.viewportDimension * 0.8;
    final target = (_scrollController.offset + direction * step)
        .clamp(0.0, position.maxScrollExtent)
        .toDouble();

    _scrollController.animateTo(
      target,
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeOutCubic,
    );
  }
}

class _RewardTrackArrowSeparator extends StatelessWidget {
  const _RewardTrackArrowSeparator();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _rewardGap,
      height: _rewardAreaHeight,
      child: Stack(
        children: [
          Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Center(
              child: _RewardTrackArrowIcon(),
            ),
          ),
        ],
      ),
    );
  }
}

class _RewardTrackArrowIcon extends StatelessWidget {
  const _RewardTrackArrowIcon();

  @override
  Widget build(BuildContext context) {
    return CustomIcon(AppIcons.arrow_reward, height: 20, width: 12);
  }
}

class _ScrollableRewardTrackContent extends StatelessWidget {
  const _ScrollableRewardTrackContent({
    required this.rewards,
    required this.progressIndex,
    required this.onRewardSelected,
    required this.onRewardClaimed,
  });

  final List<BattlePassRewardTrackItem> rewards;
  final int progressIndex;
  final ValueChanged<int> onRewardSelected;
  final ValueChanged<int> onRewardClaimed;

  @override
  Widget build(BuildContext context) {
    final contentWidth = _trackContentWidth(rewards.length);

    return SizedBox(
      width: contentWidth,
      height: double.infinity,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: _RewardTrackRoadPainter(
                itemCount: rewards.length,
                progressIndex: progressIndex,
              ),
            ),
          ),
          for (var index = 0; index < rewards.length; index++) ...[
            Positioned(
              left: _itemLeft(index),
              top: 0,
              width: _rewardCellWidth,
              height: _rewardAreaHeight,
              child: Center(
                child: RewardWidget(
                  reward: rewards[index],
                  onPressed: () => onRewardSelected(index),
                  onClaimPressed: () => onRewardClaimed(index),
                ),
              ),
            ),
            if (index < rewards.length - 1)
              Positioned(
                left: _itemLeft(index) + _rewardCellWidth,
                top: _arrowTop,
                width: _rewardGap,
                child: Center(
                  child: _RewardTrackArrowIcon(),
                ),
              ),
            Positioned(
              left: _milestoneLeft(index),
              bottom: _milestoneBottom,
              child: _RewardTrackMilestone(
                label: '${index + 1}',
                isActive: index <= progressIndex,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _BossRewardTrackContent extends StatelessWidget {
  const _BossRewardTrackContent({
    required this.reward,
    required this.showLeftConnector,
    required this.index,
    required this.progressIndex,
    required this.onRewardSelected,
    required this.onRewardClaimed,
  });

  final BattlePassRewardTrackItem reward;
  final bool showLeftConnector;
  final int index;
  final int progressIndex;
  final ValueChanged<int> onRewardSelected;
  final ValueChanged<int> onRewardClaimed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _rewardCellWidth + (showLeftConnector ? _rewardGap : 0),
      height: double.infinity,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: _BossMilestoneRoadPainter(
                progressIndex: progressIndex,
                leftConnectorWidth: showLeftConnector ? _rewardGap : 0,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: showLeftConnector ? _rewardGap : 0,
            right: 0,
            height: _rewardAreaHeight,
            child: Center(
              child: RewardWidget(
                reward: reward,
                isBossPrize: true,
                onPressed: () => onRewardSelected(index),
                onClaimPressed: () => onRewardClaimed(index),
              ),
            ),
          ),
          if (showLeftConnector)
            const Positioned(
              left: 0,
              top: _arrowTop,
              width: _rewardGap,
              child: Center(
                child: _RewardTrackArrowIcon(),
              ),
            ),
          Positioned(
            left:
                (showLeftConnector ? _rewardGap : 0) +
                (_rewardCellWidth - _milestoneSize) / 2,
            bottom: _milestoneBottom,
            child: _RewardTrackMilestone(
              label: '${index + 1}',
              isActive: index <= progressIndex,
            ),
          ),
        ],
      ),
    );
  }
}

class _PremiumSuggestionStrip extends StatelessWidget {
  const _PremiumSuggestionStrip({required this.rewards, this.onPressed});

  final List<BattlePassRewardTrackItem> rewards;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _premiumSuggestionWidth,
      height: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            height: _premiumSuggestionRewardHeight,
            child: Row(
              children: [
                for (var index = 0; index < rewards.length; index++) ...[
                  Expanded(
                    child: _PremiumSuggestionReward(
                      reward: rewards[index],
                      index: index,
                    ),
                  ),
                  if (index != rewards.length - 1)
                    const SizedBox(width: _premiumSuggestionRewardGap),
                ],
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            height: _premiumSuggestionButtonHeight,
            child: AnimatedTapWidget(
              onTap: onPressed,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CustomIcon(
                    AppIcons.premium_suggestion_button_bg,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Center(
                    child: Text(
                      'Получи все сразу!',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.buttonMedium.copyWith(
                        color: AppColors.primaryHigh,
                        shadows: AppShadows.premiumSuggestionText,
                      ),
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

class _PremiumSuggestionReward extends StatelessWidget {
  const _PremiumSuggestionReward({required this.reward, required this.index});

  final BattlePassRewardTrackItem reward;
  final int index;

  @override
  Widget build(BuildContext context) {
    final previewReward = reward.copyWith(
      isPremium: true,
      isSelected: false,
      canBeClaimed: false,
      hasClaimed: false,
      amount: index == 1 ? 16 : reward.amount,
    );

    return SizedBox(
      width: _rewardCellWidth,
      height: _rewardAreaHeight,
      child: Center(child: RewardWidget(reward: previewReward)),
    );
  }
}

class _RewardTrackMilestone extends StatelessWidget {
  const _RewardTrackMilestone({required this.label, required this.isActive});

  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _milestoneSize,
      height: _milestoneSize,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomIcon(
            AppIcons.reward_track_milestone_bg,
            size: _milestoneSize,
            color: isActive ? AppColors.trackActive : null,
          ),
          Center(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: AppTextStyles.description.copyWith(
                color: AppColors.trackMilestoneText,
                height: 1.2,
                letterSpacing: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RewardTrackRoadPainter extends CustomPainter {
  const _RewardTrackRoadPainter({
    required this.itemCount,
    required this.progressIndex,
  });

  final int itemCount;
  final int progressIndex;

  @override
  void paint(Canvas canvas, Size size) {
    if (itemCount == 0) {
      return;
    }

    final y = size.height - _milestoneBottom - _milestoneSize / 2;
    final paint = Paint()
      ..strokeWidth = _trackLineHeight
      ..strokeCap = StrokeCap.square;

    void drawLine(double start, double end, Color color) {
      paint.color = color;
      canvas.drawLine(Offset(start, y), Offset(end, y), paint);
    }

    final firstCenter = _milestoneCenterX(0);
    final lastCenter = _milestoneCenterX(itemCount - 1);

    drawLine(
      0,
      firstCenter,
      progressIndex >= 0 ? AppColors.trackActive : AppColors.trackInactive,
    );

    for (var index = 0; index < itemCount - 1; index++) {
      final start = _milestoneCenterX(index);
      final end = _milestoneCenterX(index + 1);

      if (index < progressIndex) {
        drawLine(start, end, AppColors.trackActive);
      } else if (index == progressIndex) {
        final half = start + (end - start) * 0.5;
        drawLine(start, half, AppColors.trackActive);
        drawLine(half, end, AppColors.trackInactive);
      } else {
        drawLine(start, end, AppColors.trackInactive);
      }
    }

    drawLine(
      lastCenter,
      size.width,
      progressIndex >= itemCount - 1
          ? AppColors.trackActive
          : AppColors.trackInactive,
    );
  }

  @override
  bool shouldRepaint(covariant _RewardTrackRoadPainter oldDelegate) {
    return itemCount != oldDelegate.itemCount ||
        progressIndex != oldDelegate.progressIndex;
  }
}

class _BossMilestoneRoadPainter extends CustomPainter {
  const _BossMilestoneRoadPainter({
    required this.progressIndex,
    required this.leftConnectorWidth,
  });

  final int progressIndex;
  final double leftConnectorWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final y = size.height - _milestoneBottom - _milestoneSize / 2;
    final start = 0.0;
    final paint = Paint()
      ..strokeWidth = _trackLineHeight
      ..strokeCap = StrokeCap.square;

    final center = leftConnectorWidth + _rewardCellWidth / 2;

    if (progressIndex > 12) {
      paint.color = AppColors.trackActive;
      canvas.drawLine(Offset(start, y), Offset(center, y), paint);
      return;
    }

    if (progressIndex == 12) {
      final half = center * 0.5;
      paint.color = AppColors.trackActive;
      canvas.drawLine(Offset(start, y), Offset(half, y), paint);
      paint.color = AppColors.trackInactive;
      canvas.drawLine(Offset(half, y), Offset(center, y), paint);
      return;
    }

    paint.color = AppColors.trackInactive;
    canvas.drawLine(Offset(start, y), Offset(center, y), paint);
  }

  @override
  bool shouldRepaint(covariant _BossMilestoneRoadPainter oldDelegate) {
    return progressIndex != oldDelegate.progressIndex ||
        leftConnectorWidth != oldDelegate.leftConnectorWidth;
  }
}

enum _ScrollDirection { left, right }

class _RewardTrackScrollButton extends StatelessWidget {
  const _RewardTrackScrollButton({
    required this.direction,
    required this.onPressed,
  });

  final _ScrollDirection direction;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final icon = CustomIcon(AppIcons.arrow_right, width: 18, height: 31.5);

    return AnimatedTapWidget(
      onTap: onPressed,
      pressedScale: 0.84,
      duration: const Duration(milliseconds: 140),
      child: Container(
        width: 84,
        height: 84,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.trackMilestoneText.withValues(alpha: 0.10),
        ),
        child: Center(
          child: direction == _ScrollDirection.left
              ? Transform.flip(flipX: true, child: icon)
              : icon,
        ),
      ),
    );
  }
}

int _progressIndex(List<BattlePassRewardTrackItem> rewards) {
  for (var index = rewards.length - 1; index >= 0; index--) {
    final reward = rewards[index];
    if (reward.hasClaimed || reward.canBeClaimed) {
      return index;
    }
  }

  return -1;
}

double _trackContentWidth(int itemCount) {
  if (itemCount <= 0) {
    return 0;
  }

  return _rewardCellWidth + (itemCount - 1) * _rewardStep;
}

double _itemLeft(int index) => index * _rewardStep;

double _milestoneCenterX(int index) => _itemLeft(index) + _rewardCellWidth / 2;

double _milestoneLeft(int index) =>
    _milestoneCenterX(index) - _milestoneSize / 2;

const int _scrollableRewardsCount = 13;
const int _premiumSuggestionItemsCount = 3;
const double _premiumSuggestionRewardGap = 14;
const double _premiumSuggestionButtonHeight = 58;
const double _rewardCellWidth = 242;
const double _rewardGap = 18;
const double _rewardStep = _rewardCellWidth + _rewardGap;
const double _rewardAreaHeight = 238;
const double _arrowTop = 116;
const double _milestoneSize = 60;
const double _milestoneBottom = 10;
const double _trackLineHeight = 8;
const double _premiumSuggestionWidth =
    _premiumSuggestionItemsCount * _rewardCellWidth +
    (_premiumSuggestionItemsCount - 1) * _premiumSuggestionRewardGap;
const double _premiumSuggestionRewardHeight = _rewardAreaHeight;
