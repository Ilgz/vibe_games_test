import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_snapshot.dart';

abstract interface class BattlePassRepository {
  Future<BattlePassSnapshot> getBattlePass();
}
