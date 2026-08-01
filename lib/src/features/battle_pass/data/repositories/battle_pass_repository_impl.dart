import 'package:vibe_games_test/src/features/battle_pass/data/datasources/battle_pass_mock_data_source.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/demo/battle_pass_demo_scenario.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/repositories/battle_pass_demo_repository.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_snapshot.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/repositories/battle_pass_repository.dart';

class BattlePassRepositoryImpl
    implements BattlePassRepository, BattlePassDemoRepository {
  const BattlePassRepositoryImpl({required BattlePassMockDataSource dataSource})
    : _dataSource = dataSource;

  final BattlePassMockDataSource _dataSource;

  BattlePassMockDataSource get dataSource => _dataSource;

  @override
  Future<BattlePassSnapshot> getBattlePass({
    BattlePassDemoScenario scenario =
        BattlePassDemoScenario.premiumNotPurchased,
  }) {
    return _dataSource.getBattlePass(scenario: scenario);
  }
}
