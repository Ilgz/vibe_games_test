import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_season.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/player_battle_pass_progress.dart';

part 'battle_pass_snapshot.freezed.dart';

@freezed
abstract class BattlePassSnapshot with _$BattlePassSnapshot {
  const factory BattlePassSnapshot({
    required BattlePassSeason season,
    required PlayerBattlePassProgress playerProgress,
  }) = _BattlePassSnapshot;
}
