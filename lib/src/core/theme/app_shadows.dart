import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';

abstract final class AppShadows {
  static const panel = [
    BoxShadow(
      color: AppColors.shadowPanel,
      blurRadius: 12,
      offset: Offset(0, 6),
    ),
  ];

  static const primaryGlow = [
    BoxShadow(color: AppColors.glowPrimary, blurRadius: 40, spreadRadius: 1),
  ];

  static const dangerGlow = [
    BoxShadow(color: AppColors.glowDanger, blurRadius: 20, spreadRadius: 2),
  ];

  static const premiumSuggestionText = [
    Shadow(color: AppColors.premiumSuggestionTextShadow, blurRadius: 14.4),
  ];

  static const rewardBossBlurStyle = BlurStyle.normal;
  static const rewardBossBlurSigma = 45.1 * 0.57735 + 0.5;
}
