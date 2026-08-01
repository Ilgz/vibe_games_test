import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_pass_experience.freezed.dart';

@freezed
abstract class BattlePassExperience with _$BattlePassExperience {
  const factory BattlePassExperience({
    required int level,
    required int currentExperience,
    required int requiredExperience,
    required bool hasXpBuff,
  }) = _BattlePassExperience;
}
