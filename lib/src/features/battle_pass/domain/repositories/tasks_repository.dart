import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_experience.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';

abstract interface class TasksRepository {
  Future<List<BattlePassTask>> getTasks();

  Future<BattlePassExperience> getExperience();
}
