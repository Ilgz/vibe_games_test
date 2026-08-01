import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_experience.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';

part 'tasks_state.freezed.dart';

@freezed
sealed class TasksState with _$TasksState {
  const factory TasksState.initial() = _Initial;
  const factory TasksState.loading() = _Loading;
  const factory TasksState.loaded({
    required List<BattlePassTask> tasks,
    required BattlePassExperience experience,
  }) = _Loaded;
  const factory TasksState.failure(String message) = _Failure;
}
