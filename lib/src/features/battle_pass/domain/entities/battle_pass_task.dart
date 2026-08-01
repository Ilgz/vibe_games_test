import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_pass_task.freezed.dart';

@freezed
abstract class BattlePassTask with _$BattlePassTask {
  const factory BattlePassTask({
    required String id,
    required String title,
    required String description,
    required int experienceReward,
    required int currentProgress,
    required int targetProgress,
    required bool canBeClaimed,
  }) = _BattlePassTask;
}
