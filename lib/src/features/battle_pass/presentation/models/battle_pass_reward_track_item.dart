import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_reward_item.dart';

class BattlePassRewardTrackItem {
  const BattlePassRewardTrackItem({
    required this.item,
    required this.hasClaimed,
    required this.canBeClaimed,
    this.amount = 1,
    this.isPremium = false,
    this.isSelected = false,
    this.isGift = false,
  });

  final BattlePassRewardItem item;
  final bool isPremium;
  final bool hasClaimed;
  final bool canBeClaimed;
  final bool isSelected;
  final bool isGift;
  final int amount;

  BattlePassRewardTrackItem copyWith({
    BattlePassRewardItem? item,
    bool? isPremium,
    bool? hasClaimed,
    bool? canBeClaimed,
    bool? isSelected,
    bool? isGift,
    int? amount,
  }) {
    return BattlePassRewardTrackItem(
      item: item ?? this.item,
      isPremium: isPremium ?? this.isPremium,
      hasClaimed: hasClaimed ?? this.hasClaimed,
      canBeClaimed: canBeClaimed ?? this.canBeClaimed,
      isSelected: isSelected ?? this.isSelected,
      isGift: isGift ?? this.isGift,
      amount: amount ?? this.amount,
    );
  }
}
