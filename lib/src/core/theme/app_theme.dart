import 'package:flutter/material.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';

abstract final class AppTheme {
  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: AppTextStyles.fontFamily,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        surface: AppColors.panel,
        primary: AppColors.primary,
        secondary: AppColors.premium,
        error: AppColors.danger,
      ),
      textTheme: const TextTheme(
        displaySmall: AppTextStyles.display,
        titleLarge: AppTextStyles.title,
        titleMedium: AppTextStyles.subtitle,
        bodyMedium: AppTextStyles.body,
        labelLarge: AppTextStyles.button,
        labelSmall: AppTextStyles.badge,
      ),
    );
  }
}
