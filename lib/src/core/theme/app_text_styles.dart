import 'package:flutter/widgets.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';

abstract final class AppTextStyles {
  static const fontFamily = 'Geologica';

  static const display = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 28,
    height: 1.1,
    fontWeight: FontWeight.w600,
  );

  static const displayLarge = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 44,
    height: 1.1,
    fontWeight: FontWeight.w600,
  );

  static const title = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 18,
    height: 1.15,
    fontWeight: FontWeight.w600,
  );

  static const titleLarge = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 34,
    height: 1.15,
    fontWeight: FontWeight.w600,
  );

  static const subtitle = TextStyle(
    color: AppColors.textSecondary,
    fontFamily: fontFamily,
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w500,
  );

  static const body = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 13,
    height: 1.25,
    fontWeight: FontWeight.w600,
  );

  static const bodyLarge = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 18,
    height: 1.25,
    fontWeight: FontWeight.w600,
  );

  static const description = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 22,
    height: 1.2,
    fontWeight: FontWeight.w500,
  );

  static const descriptionLarge = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 26,
    height: 1.2,
    fontWeight: FontWeight.w500,
  );

  static const caption = TextStyle(
    color: AppColors.textSecondary,
    fontFamily: fontFamily,
    fontSize: 11,
    height: 1.2,
    fontWeight: FontWeight.w700,
  );

  static const progress = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 22,
    height: 1.2,
    fontWeight: FontWeight.w700,
  );

  static const rewardCounter = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 22,
    height: 1.2,
    fontWeight: FontWeight.w700,
  );

  static const progressLarge = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 34,
    height: 1.2,
    fontWeight: FontWeight.w700,
  );

  static const button = TextStyle(
    color: AppColors.ctaText,
    fontFamily: fontFamily,
    fontSize: 30,
    height: 1,
    letterSpacing: 0,
    fontWeight: FontWeight.w500,
  );

  static const buttonSmall = TextStyle(
    color: AppColors.ctaText,
    fontFamily: fontFamily,
    fontSize: 22,
    height: 1,
    fontWeight: FontWeight.w500,
  );

  static const buttonMedium = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 24,
    height: 1,
    fontWeight: FontWeight.w500,
  );

  static const promo = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 40,
    height: 1.15,
    fontWeight: FontWeight.w500,
  );

  static const badge = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: fontFamily,
    fontSize: 10,
    height: 1,
    fontWeight: FontWeight.w800,
  );
}
