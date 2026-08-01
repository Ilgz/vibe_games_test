import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/constants/app_images.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/extra_small_game_button.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/widgets/maxed_out_game_button.dart';
import 'package:vibe_games_test/src/core/widgets/medium_game_button.dart';

class PremiumBanner extends StatelessWidget {
  const PremiumBanner({
    super.key,
    required this.isPremium,
    required this.isMaxedOut,
    required this.canCollectMultiReward,
    this.onUpgradePressed,
    this.onCollectAllPressed,
  });

  final bool isPremium;
  final bool isMaxedOut;
  final bool canCollectMultiReward;
  final VoidCallback? onUpgradePressed;
  final VoidCallback? onCollectAllPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          right: 0,
          top: 0,
          child: Align(
            alignment: AlignmentGeometry.centerRight,
            child: SizedBox(
              width: 494,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                switchInCurve: Curves.easeOutCubic,
                switchOutCurve: Curves.easeOutCubic,
                transitionBuilder: _fadeScaleTransition,
                child: _BannerImage(
                  isPremium,
                  key: ValueKey('banner_image_$isPremium'),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          top: 310,
          child: Align(
            alignment: AlignmentGeometry.topRight,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              switchInCurve: Curves.easeOutCubic,
              switchOutCurve: Curves.easeOutCubic,
              transitionBuilder: _fadeScaleTransition,
              child: _BannerContent(
                key: ValueKey(
                  'banner_content_${isPremium}_${isMaxedOut}_$canCollectMultiReward',
                ),
                isPremium: isPremium,
                isMaxedOut: isMaxedOut,
                canCollectMultiReward: canCollectMultiReward,
                onUpgradePressed: onUpgradePressed,
                onCollectAllPressed: onCollectAllPressed,
              ),
            ),
          ),
        ),
      ],
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

class _BannerImage extends StatelessWidget {
  const _BannerImage(this.isPremium, {super.key});
  final bool isPremium;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          right: -80,
          left: 80,
          child: Image.asset(
            AppImages.battle_pass_premium_banner_bg,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: AlignmentGeometry.topRight,
          child: Padding(
            padding: isPremium
                ? EdgeInsetsGeometry.zero
                : const EdgeInsets.only(top: 48, right: 60),
            child: Image.asset(
              isPremium
                  ? AppImages.battle_pass_premium_banner_figure_active
                  : AppImages.battle_pass_premium_banner_figure_inactive,
              fit: BoxFit.cover,
              alignment: AlignmentGeometry.topCenter,
              width: isPremium ? 386 : 320,
            ),
          ),
        ),
      ],
    );
  }
}

class _BannerContent extends StatelessWidget {
  const _BannerContent({
    super.key,
    required this.isPremium,
    required this.isMaxedOut,
    required this.canCollectMultiReward,
    required this.onUpgradePressed,
    required this.onCollectAllPressed,
  });

  final bool isPremium;
  final bool isMaxedOut;
  final bool canCollectMultiReward;
  final VoidCallback? onUpgradePressed;
  final VoidCallback? onCollectAllPressed;

  @override
  Widget build(BuildContext context) {
    final title = isPremium ? 'Повышение уровня' : 'Элитный пропуск';
    final description = isPremium
        ? 'Повышай уровень боевого пропуска и забирай новые награды!'
        : 'Прокачай боевой пропуск и забери четкие скины, аксессуары и многое другое!';
    final primaryLabel = isPremium ? 'Повысить уровень' : 'Прокачать';

    return SizedBox(
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyles.titleLarge.copyWith(
              color: AppColors.primaryHigh,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyles.description.copyWith(
              color: AppColors.textPrimary70,
            ),
          ),
          const SizedBox(height: 36),
          if (isMaxedOut)
            MaxedOutGameButton(
              label: 'Достигнут максимальный уровень',
              width: double.infinity,
            )
          else
            MediumGameButton(
              label: primaryLabel,
              width: double.infinity,
              icon: CustomIcon(
                isPremium ? AppIcons.level_up : AppIcons.premium,
                size: 30,
              ),
              onPressed: onUpgradePressed,
            ),
          if (isPremium && canCollectMultiReward) ...[
            const SizedBox(height: 12),
            ExtraSmallGameButton(
              label: 'Забрать все награды',
              onPressed: onCollectAllPressed,
              gradientColors: AppColors.collectGradientColors,
              textColor: AppColors.textPrimary,
            ),
          ],
        ],
      ),
    );
  }
}
