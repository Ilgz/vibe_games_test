import 'package:vibe_games_test/src/core/constants/app_icons.dart';

enum NavigationItem {
  event,
  battlePass,
  calendar,
  afterSchool,
  inviteFriend,
  promoCode;

  String get iconAsset {
    switch (this) {
      case NavigationItem.event:
        return AppIcons.nav_event;
      case NavigationItem.battlePass:
        return AppIcons.nav_battle_pass;
      case NavigationItem.calendar:
        return AppIcons.nav_calendar;
      case NavigationItem.afterSchool:
        return AppIcons.nav_after_school;
      case NavigationItem.inviteFriend:
        return AppIcons.nav_invite_friend;
      case NavigationItem.promoCode:
        return AppIcons.nav_promo_code;
    }
  }

  String get label {
    switch (this) {
      case NavigationItem.event:
        return 'Ивент';
      case NavigationItem.battlePass:
        return 'Battle Pass';
      case NavigationItem.calendar:
        return 'Календарь\nновичка';
      case NavigationItem.afterSchool:
        return 'После\nуроков';
      case NavigationItem.inviteFriend:
        return 'Пригласи\nдруга';
      case NavigationItem.promoCode:
        return 'Промокод';
    }
  }
}
