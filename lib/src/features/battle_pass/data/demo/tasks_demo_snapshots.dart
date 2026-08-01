import 'package:vibe_games_test/src/features/battle_pass/data/demo/tasks_demo_scenario.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_experience.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';

class TasksDemoSnapshot {
  const TasksDemoSnapshot({required this.experience, required this.tasks});

  final BattlePassExperience experience;
  final List<BattlePassTask> tasks;
}

class TasksDemoSnapshots {
  const TasksDemoSnapshots._();

  static TasksDemoSnapshot snapshot(TasksDemoScenario scenario) {
    return TasksDemoSnapshot(experience: _experience(scenario), tasks: _tasks);
  }

  static BattlePassExperience _experience(TasksDemoScenario scenario) {
    return switch (scenario) {
      TasksDemoScenario.premiumNotPurchased => const BattlePassExperience(
        level: 4,
        currentExperience: 120,
        requiredExperience: 550,
        hasXpBuff: false,
      ),
      TasksDemoScenario.premiumNotPurchasedWithXpBuff =>
        const BattlePassExperience(
          level: 8,
          currentExperience: 320,
          requiredExperience: 950,
          hasXpBuff: true,
        ),
      TasksDemoScenario.premiumPurchased => const BattlePassExperience(
        level: 7,
        currentExperience: 90,
        requiredExperience: 850,
        hasXpBuff: false,
      ),
      TasksDemoScenario.premiumPurchasedWithXpBuff =>
        const BattlePassExperience(
          level: 5,
          currentExperience: 180,
          requiredExperience: 650,
          hasXpBuff: true,
        ),
    };
  }

  static const List<BattlePassTask> _tasks = [
    BattlePassTask(
      id: 'id1',
      title: 'title1',
      description:
          'Используйте определенный предмет (Энергетик) 10 раз в классическом режиме.',
      experienceReward: 25,
      currentProgress: 1,
      targetProgress: 3,
      canBeClaimed: false,
    ),
    BattlePassTask(
      id: 'id2',
      title: 'title2',
      description:
          'Используйте определенный предмет (Энергетик) 10 раз в классическом режиме.',
      experienceReward: 25,
      currentProgress: 1,
      targetProgress: 3,
      canBeClaimed: false,
    ),
    BattlePassTask(
      id: 'id3',
      title: 'title3',
      description:
          'Используйте определенный предмет (Энергетик) 10 раз в классическом режиме.',
      experienceReward: 1000,
      currentProgress: 10,
      targetProgress: 10,
      canBeClaimed: true,
    ),
    BattlePassTask(
      id: 'id4',
      title: 'title4',
      description:
          'Используйте определенный предмет (Энергетик) 10 раз в классическом режиме.',
      experienceReward: 25,
      currentProgress: 1,
      targetProgress: 3,
      canBeClaimed: false,
    ),
    BattlePassTask(
      id: 'id5',
      title: 'title5',
      description:
          'Используйте определенный предмет (Энергетик) 10 раз в классическом режиме.',
      experienceReward: 25,
      currentProgress: 1,
      targetProgress: 3,
      canBeClaimed: false,
    ),
  ];
}
