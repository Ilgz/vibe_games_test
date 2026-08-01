import 'package:vibe_games_test/src/features/battle_pass/data/demo/battle_pass_demo_scenario.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/demo/battle_pass_demo_snapshots.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_snapshot.dart';

class BattlePassMockDataSource {
  const BattlePassMockDataSource();

  Future<BattlePassSnapshot> getBattlePass({
    required BattlePassDemoScenario scenario,
  }) async {
    return BattlePassDemoSnapshots.snapshot(scenario);
  }
}
