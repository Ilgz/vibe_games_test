import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/constants/app_icons.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_shadows.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/widgets/animated_tap_widget.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/models/battle_pass_reward_track_item.dart';

class RewardWidget extends StatelessWidget {
  const RewardWidget({
    super.key,
    required this.reward,
    this.isBossPrize = false,
    this.onPressed,
    this.onClaimPressed,
  });

  final BattlePassRewardTrackItem reward;
  final bool isBossPrize;
  final VoidCallback? onPressed;
  final VoidCallback? onClaimPressed;

  @override
  Widget build(BuildContext context) {
    final canShowClaimState = reward.canBeClaimed && !reward.hasClaimed;
    final scale = canShowClaimState ? 1.08 : 1.0;
    final borderColor = reward.isSelected
        ? AppColors.textPrimary
        : isBossPrize
        ? AppColors.rewardBossBorder
        : canShowClaimState
        ? AppColors.rewardClaimBorder
        : AppColors.transparent;

    return AnimatedTapWidget(
      onTap: onPressed,
      child: AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOutCubic,
        child: SizedBox(
          width: 242,
          height: 220,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: reward.hasClaimed ? 0.4 : 1.0,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: CustomPaint(
                          painter: _SlantedCardPainter(
                            gradientColors: reward.item.backgroundGradientColors,
                            borderColor: borderColor,
                            shadowColor: isBossPrize
                                ? AppColors.rewardBossShadow
                                : null,
                          ),
                          child: Container(),
                        ),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 45, right: 43),
                          child: Image.asset(
                            reward.item.imageAsset,
                            fit: BoxFit.contain,
                            semanticLabel: reward.item.name,
                          ),
                        ),
                      ),
                      if (reward.isPremium)
                        const Positioned(
                          left: 32,
                          top: 18,
                          child: _RewardSticker(),
                        )
                      else if (reward.isGift)
                        const Positioned(
                          left: 32,
                          top: 18,
                          child: _GiftSticker(),
                        ),
                    ],
                  ),
                ),
              ),

              if (reward.hasClaimed)
                const Positioned(
                  right: 16,
                  top: 16,
                  child: CustomIcon(AppIcons.reward_claimed, size: 28),
                )
              else if (reward.amount > 1 && !canShowClaimState)
                Positioned(
                  right: 32,
                  bottom: 16,
                  child: _CounterSticker(amount: reward.amount),
                )
              else if (canShowClaimState)
                Positioned.fill(
                  bottom: 12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: AlignmentGeometry.centerRight,
                        child: Padding(
                          padding: EdgeInsetsGeometry.only(
                            right: 24,
                            bottom: 8,
                          ),
                          child: _CounterSticker(amount: reward.amount),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: AnimatedTapWidget(
                          onTap: onClaimPressed,
                          child: SizedBox(
                            height: 60,
                            child: Stack(
                              children: [
                                CustomIcon(AppIcons.receive_reward_bg),
                                Positioned.fill(
                                  child: Center(
                                    child: Text(
                                      'Забрать',
                                      style: AppTextStyles.buttonMedium,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RewardSticker extends StatelessWidget {
  const _RewardSticker();

  @override
  Widget build(BuildContext context) {
    return CustomIcon(AppIcons.reward_sticker, size: 55);
  }
}

class _GiftSticker extends StatelessWidget {
  const _GiftSticker();

  @override
  Widget build(BuildContext context) {
    return CustomIcon(AppIcons.gift_sticker, size: 55);
  }
}

class _CounterSticker extends StatelessWidget {
  const _CounterSticker({required this.amount});
  final int amount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      width: 59,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: _SlantedCardPainter(
              gradientColors: [
                AppColors.rewardCounterBackground,
                AppColors.rewardCounterBackground,
              ],
              borderColor: AppColors.transparent,
            ),
            child: Container(),
          ),
          Center(child: Text('x$amount', style: AppTextStyles.rewardCounter)),
        ],
      ),
    );
  }
}

class _SlantedCardPainter extends CustomPainter {
  const _SlantedCardPainter({
    required this.gradientColors,
    required this.borderColor,
    this.shadowColor,
  });

  final List<Color> gradientColors;
  final Color borderColor;
  final Color? shadowColor;

  @override
  void paint(Canvas canvas, Size size) {
    final path = _rewardCardPath(size);
    final shadowColor = this.shadowColor;

    if (shadowColor != null) {
      final shadowPaint = Paint()
        ..color = shadowColor
        ..maskFilter = ui.MaskFilter.blur(
          AppShadows.rewardBossBlurStyle,
          AppShadows.rewardBossBlurSigma,
        );

      canvas.drawPath(path, shadowPaint);
    }

    final fillPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: gradientColors,
      ).createShader(Offset.zero & size)
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas
      ..drawPath(path, fillPaint)
      ..drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(covariant _SlantedCardPainter oldDelegate) {
    return gradientColors != oldDelegate.gradientColors ||
        borderColor != oldDelegate.borderColor ||
        shadowColor != oldDelegate.shadowColor;
  }
}

Path _rewardCardPath(Size size) {
  final w = size.width;
  final h = size.height;

  Offset p(double x, double y) => Offset(w * x, h * y);

  return Path()
    ..moveTo(p(0.21, 0.01).dx, p(0.21, 0.01).dy)
    ..lineTo(p(0.885, 0.01).dx, p(0.885, 0.01).dy)
    ..quadraticBezierTo(
      p(0.99, 0.01).dx,
      p(0.99, 0.01).dy,
      p(0.99, 0.14).dx,
      p(0.99, 0.14).dy,
    )
    ..lineTo(p(0.89, 0.87).dx, p(0.89, 0.87).dy)
    ..quadraticBezierTo(
      p(0.875, 0.99).dx,
      p(0.875, 0.99).dy,
      p(0.79, 0.99).dx,
      p(0.79, 0.99).dy,
    )
    ..lineTo(p(0.115, 0.99).dx, p(0.115, 0.99).dy)
    ..quadraticBezierTo(
      p(0.01, 0.99).dx,
      p(0.01, 0.99).dy,
      p(0.01, 0.87).dx,
      p(0.01, 0.87).dy,
    )
    ..lineTo(p(0.11, 0.14).dx, p(0.11, 0.14).dy)
    ..quadraticBezierTo(
      p(0.125, 0.01).dx,
      p(0.125, 0.01).dy,
      p(0.21, 0.01).dx,
      p(0.21, 0.01).dy,
    )
    ..close();
}
