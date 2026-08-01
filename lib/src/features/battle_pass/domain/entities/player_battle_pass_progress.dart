import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_experience.dart';

part 'player_battle_pass_progress.freezed.dart';

@freezed
abstract class PlayerBattlePassProgress with _$PlayerBattlePassProgress {
  const factory PlayerBattlePassProgress({
    required BattlePassExperience experience,
    required bool hasPremium,
    required List<String> claimedRewardIds,
  }) = _PlayerBattlePassProgress;
}
