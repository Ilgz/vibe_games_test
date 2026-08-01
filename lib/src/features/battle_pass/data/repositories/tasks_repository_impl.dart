import 'package:vibe_games_test/src/features/battle_pass/data/datasources/tasks_mock_data_source.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_experience.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/repositories/tasks_repository.dart';

class TasksRepositoryImpl implements TasksRepository {
  const TasksRepositoryImpl({required TasksMockDataSource dataSource})
    : _dataSource = dataSource;

  final TasksMockDataSource _dataSource;

  TasksMockDataSource get dataSource => _dataSource;

  @override
  Future<List<BattlePassTask>> getTasks() {
    return _dataSource.getTasks();
  }

  @override
  Future<BattlePassExperience> getExperience() {
    return _dataSource.getExperience();
  }
}
