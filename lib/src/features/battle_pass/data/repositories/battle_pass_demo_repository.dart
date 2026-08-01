import 'package:vibe_games_test/src/features/battle_pass/data/demo/battle_pass_demo_scenario.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_snapshot.dart';

abstract interface class BattlePassDemoRepository {
  Future<BattlePassSnapshot> getBattlePass({
    required BattlePassDemoScenario scenario,
  });
}
