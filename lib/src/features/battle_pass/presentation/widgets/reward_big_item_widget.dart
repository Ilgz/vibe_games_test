import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';
import 'package:vibe_games_test/src/core/widgets/gradient_text.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/models/battle_pass_reward_track_item.dart';

class RewardBigItemWidget extends StatelessWidget {
  const RewardBigItemWidget({super.key, required this.reward});

  final BattlePassRewardTrackItem reward;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 60),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 180),
        switchInCurve: Curves.easeOutCubic,
        switchOutCurve: Curves.easeOutCubic,
        transitionBuilder: _fadeScaleTransition,
        child: _RewardBigItemContent(
          key: ValueKey(
            '${reward.item.name}_${reward.amount}_${reward.hasClaimed}',
          ),
          reward: reward,
        ),
      ),
    );
  }

  Widget _fadeScaleTransition(Widget child, Animation<double> animation) {
    final scale = Tween<double>(
      begin: 0.98,
      end: 1,
    ).animate(animation);

    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(scale: scale, child: child),
    );
  }
}

class _RewardBigItemContent extends StatelessWidget {
  const _RewardBigItemContent({super.key, required this.reward});

  final BattlePassRewardTrackItem reward;

  @override
  Widget build(BuildContext context) {
    final title = reward.item.name;
    final showUpgradeText = reward.amount > 1 && !reward.hasClaimed;
    final bool titleContainsOr = title.contains('или');

    return Padding(
      padding: EdgeInsetsGeometry.only(bottom: titleContainsOr ? 20 : 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIcon(reward.item.imageAsset, size: 512),
          showUpgradeText
              ? Container(
                  height: 39,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: AppColors.primaryGradient,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CustomIcon(
                        AppIcons.premium,
                        size: 28,
                        color: AppColors.ctaText,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Доступно с прокачкой!',
                        style: AppTextStyles.buttonSmall,
                      ),
                    ],
                  ),
                )
              : SizedBox(height: 39),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: _buildTitle(title)),
              const SizedBox(width: 16),
              Padding(
                padding: titleContainsOr
                    ? EdgeInsetsGeometry.only(bottom: 12)
                    : EdgeInsetsGeometry.zero,
                child: CustomIcon(
                  AppIcons.info,
                  size: 36,
                  color: AppColors.textPrimary.withValues(alpha: 0.72),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(String title) {
    const style = AppTextStyles.titleLarge;

    if (!title.contains('или')) {
      return Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: style,
      );
    }

    final parts = title.split('или');

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: parts[0].trim(), style: style),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: GradientText(
                Text(
                  ' или ',
                  style: style.copyWith(color: AppColors.primaryHigh),
                ),
                gradient: AppColors.primaryGradient,
              ),
            ),
          ),
          TextSpan(text: parts.sublist(1).join('или').trim(), style: style),
        ],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
    );
  }
}
