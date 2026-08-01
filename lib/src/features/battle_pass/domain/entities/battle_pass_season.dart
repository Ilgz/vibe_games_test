import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_level.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';

part 'battle_pass_season.freezed.dart';

@freezed
abstract class BattlePassSeason with _$BattlePassSeason {
  const factory BattlePassSeason({
    required String id,
    required String title,
    required DateTime startsAt,
    required DateTime endsAt,
    required List<BattlePassLevel> levels,
    required List<BattlePassTask> tasks,
  }) = _BattlePassSeason;
}

extension BattlePassSeasonComputed on BattlePassSeason {
  bool isFinishedAt(DateTime date) => !date.isBefore(endsAt);
}
