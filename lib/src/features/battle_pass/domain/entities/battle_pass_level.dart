import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/reward.dart';

part 'battle_pass_level.freezed.dart';

@freezed
abstract class BattlePassLevel with _$BattlePassLevel {
  const factory BattlePassLevel({
    required int number,
    required int requiredExperience,
    Reward? freeReward,
    Reward? premiumReward,
  }) = _BattlePassLevel;
}
