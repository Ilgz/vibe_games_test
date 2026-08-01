import 'dart:ui';

import 'package:vibe_games_test/src/core/constants/app_images.dart';

enum BattlePassRewardItem {
  hornedMask(
    name: 'Рогатая маска',
    imageAsset: AppImages.battle_pass_item_1,
    backgroundGradientColors: [
      Color(0xFF2C2323),
      Color(0xFF432723),
      Color(0xFF7A2C00),
    ],
  ),
  greenMonster(
    name: 'Зеленый монстр',
    imageAsset: AppImages.battle_pass_item_2,
    backgroundGradientColors: [
      Color(0xFF2C232A),
      Color(0xFF4A2442),
      Color(0xFF611163),
    ],
  ),
  blueMonster(
    name: 'Синий монстр',
    imageAsset: AppImages.battle_pass_item_3,
    backgroundGradientColors: [
      Color(0xFF2C232A),
      Color(0xFF4A2442),
      Color(0xFF611163),
    ],
  ),
  respirator(
    name: 'Респиратор',
    imageAsset: AppImages.battle_pass_item_4,
    backgroundGradientColors: [
      Color(0xFF2C232A),
      Color(0xFF4A2442),
      Color(0xFF611163),
    ],
  ),
  gangsters(
    name: '«Роковая женщина» или «Босс мафии»',
    imageAsset: AppImages.battle_pass_item_5,
    backgroundGradientColors: [
      Color(0xFF29292C),
      Color(0xFF2E2E31),
      Color(0xFF424345),
    ],
  ),
  bodyArmor(
    name: 'Бронежилет',
    imageAsset: AppImages.battle_pass_item_6,
    backgroundGradientColors: [
      Color(0xFF29292C),
      Color(0xFF2E2E31),
      Color(0xFF424345),
    ],
  ),
  whiteMask(
    name: 'Белая маска',
    imageAsset: AppImages.battle_pass_item_7,
    backgroundGradientColors: [
      Color(0xFF29292C),
      Color(0xFF2E2E31),
      Color(0xFF424345),
    ],
  ),
  demonMask(
    name: 'Маска демона',
    imageAsset: AppImages.battle_pass_item_8,
    backgroundGradientColors: [
      Color(0xFF2C232A),
      Color(0xFF4A2442),
      Color(0xFF611163),
    ],
  ),
  passport(
    name: 'Паспорт',
    imageAsset: AppImages.battle_pass_item_9,
    backgroundGradientColors: [
      Color(0xFF29292C),
      Color(0xFF2E2E31),
      Color(0xFF424345),
    ],
  ),
  candyCane(
    name: 'Карамельная трость',
    imageAsset: AppImages.battle_pass_item_10,
    backgroundGradientColors: [
      Color(0xFF29292C),
      Color(0xFF2E2E31),
      Color(0xFF424345),
    ],
  ),
  canister(
    name: 'Канистра',
    imageAsset: AppImages.battle_pass_item_11,
    backgroundGradientColors: [
      Color(0xFF2C232A),
      Color(0xFF4A2442),
      Color(0xFF611163),
    ],
  ),
  shopperBag(
    name: 'Сумка-шоппер',
    imageAsset: AppImages.battle_pass_item_12,
    backgroundGradientColors: [
      Color(0xFF222431),
      Color(0xFF1F3351),
      Color(0xFF265374),
    ],
  ),
  stickerSet(
    name: 'Набор стикеров',
    imageAsset: AppImages.battle_pass_item_13,
    backgroundGradientColors: [
      Color(0xFF29292C),
      Color(0xFF2E2E31),
      Color(0xFF424345),
    ],
  ),
  megaPack(
    name: 'Мега пак',
    imageAsset: AppImages.battle_pass_item_14,
    backgroundGradientColors: [
      Color(0xFF2C2323),
      Color(0xFF432723),
      Color(0xFF7A2C00),
    ],
  );

  const BattlePassRewardItem({
    required this.name,
    required this.imageAsset,
    required this.backgroundGradientColors,
  });

  final String name;
  final String imageAsset;
  final List<Color> backgroundGradientColors;
}
