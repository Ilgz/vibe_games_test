import 'package:vibe_games_test/src/features/battle_pass/data/demo/tasks_demo_scenario.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/demo/tasks_demo_snapshots.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_experience.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';

class TasksMockDataSource {
  const TasksMockDataSource({
    this.scenario = TasksDemoScenario.premiumNotPurchased,
  });

  final TasksDemoScenario scenario;

  Future<List<BattlePassTask>> getTasks() async {
    return TasksDemoSnapshots.snapshot(scenario).tasks;
  }

  Future<BattlePassExperience> getExperience() async {
    return TasksDemoSnapshots.snapshot(scenario).experience;
  }
}
