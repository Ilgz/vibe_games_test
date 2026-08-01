import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/demo/battle_pass_demo_scenario.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_snapshot.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/models/battle_pass_reward_track_item.dart';

part 'battle_pass_state.freezed.dart';

@freezed
sealed class BattlePassState with _$BattlePassState {
  const factory BattlePassState.initial() = _Initial;
  const factory BattlePassState.loading() = _Loading;
  const factory BattlePassState.loaded({
    required BattlePassSnapshot snapshot,
    required BattlePassDemoScenario scenario,
    required List<BattlePassRewardTrackItem> rewardTrackItems,
  }) = _Loaded;
  const factory BattlePassState.failure(String message) = _Failure;
}
