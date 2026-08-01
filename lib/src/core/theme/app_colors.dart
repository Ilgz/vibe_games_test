import 'package:flutter/material.dart';

abstract final class AppColors {
  static const transparent = Color(0x00000000);
  static const appBackground = Color(0xFF000000);
  static const background = Color(0xFF17080A);
  static const backgroundDeep = Color(0xFF0C0507);
  static const taskProgressPillBackground = Color(0xFF232429);
  static const panel = Color(0xFF341314);
  static const panelHigh = Color(0xFF4B1A17);
  static const panelLow = Color(0xFF220B0D);
  static const panelBorder = Color(0xFF7A3A20);

  static const primary = Color(0xFFFFB334);
  static const primaryHigh = Color(0xFFFFE46A);
  static const primaryLow = Color(0xFFE86E22);
  static const primaryPressed = Color(0xFFC95618);

  static const ctaText = Color(0xFF3A1608);
  static const textInverse = Color(0xFF18191F);
  static const textPrimary = Color(0xFFFFFFFF);
  static const textPrimary30 = Color(0x4DFFFFFF);
  static const textPrimary32 = Color(0x52FFFFFF);
  static const textPrimary40 = Color(0x66FFFFFF);
  static const textPrimary42 = Color(0x6BFFFFFF);
  static const textPrimary60 = Color(0x99FFFFFF);
  static const textPrimary70 = Color(0xB3FFFFFF);
  static const textPrimary80 = Color(0xCCFFFFFF);
  static const textSecondary = Color(0xFFE0B988);
  static const textMuted = Color(0xFF8E6B55);

  static const surfaceOverlay5 = Color(0x0DFFFFFF);
  static const surfaceOverlay7 = Color(0x12FFFFFF);
  static const surfaceOverlay10 = Color(0x1AFFFFFF);
  static const surfaceOverlay12 = Color(0x1FFFFFFF);

  static const danger = Color(0xFFC43726);
  static const success = Color(0xFF37C66A);
  static const successMuted = Color(0xFF68C286);
  static const xpBuff = Color(0xFFE3BA47);
  static const premium = Color(0xFFFFC54D);
  static const locked = Color(0xAA000000);
  static const claimed = Color(0xAA123A20);
  static const divider = Color(0xFF5E2C1E);

  static const glowPrimary = Color(0x80FF8A00);
  static const glowDanger = Color(0x669B1C18);
  static const shadowPanel = Color(0x80000000);

  static const primaryGradientColors = [Color(0xFFEFCB4C), Color(0xFFDE8029)];
  static const primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: primaryGradientColors,
  );

  static const battlePassTitleGradientColors = [
    Color(0xFFD63A26),
    Color(0xFFEF6429),
  ];

  static const taskActionGradientColors = [
    Color(0xFFE22929),
    Color(0xFFFF6435),
  ];
  static const taskActionDisabledGradientColors = [
    Color(0xFF9F4428),
    Color(0xFF9F4428),
  ];
  static const collectGradientColors = [Color(0xFF56B877), Color(0xFF449660)];
  static const collectMutedGradientColors = [
    Color(0x6655B675),
    Color(0x66449761),
  ];
  static const disabledGradientColors = [surfaceOverlay10, surfaceOverlay10];
  static const seasonEndedTimerGradientColors = [
    Color(0xFFFFA34E),
    Color(0xFFFFC847),
    Color(0xFFFFB51B),
    Color(0xFFFF7B5F),
  ];
  static const seasonEndedBorder = Color(0xFFFFB41C);
  static const seasonEndedPanel = Color(0x9975531B);
  static const seasonEndedShine = Color(0xFFC8A66F);

  static const taskCardHeader = Color(0xFF530202);
  static const taskCardBody = Color(0xCC7C1404);
  static const taskRewardBadge = Color(0xFFF65231);
  static const taskPreviewHeader = Color(0xCC353847);
  static const taskPreviewBody = Color(0xCC212331);
  static const taskResetText = Color(0xFF398653);

  static const rewardBossBorder = Color(0xFFDA7128);
  static const rewardClaimBorder = Color(0xFF58C881);
  static const rewardBossShadow = Color(0xFFE23600);
  static const rewardCounterBackground = Color(0x9918191F);
  static const premiumSuggestionTextShadow = Color(0xFFFF5C00);

  static const trackActive = Color(0xFFFF412D);
  static const trackInactive = Color(0xFF2D2E34);
  static const trackMilestoneText = Color(0xFFE9E9F3);
}
