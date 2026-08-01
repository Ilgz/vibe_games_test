import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/repositories/tasks_repository.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/cubit/tasks_state.dart';

class TasksCubit extends Cubit<TasksState> {
  TasksCubit({required TasksRepository repository})
    : _repository = repository,
      super(const TasksState.initial());

  final TasksRepository _repository;

  Future<void> load() async {
    emit(const TasksState.loading());

    try {
      final tasks = await _repository.getTasks();
      final experience = await _repository.getExperience();
      emit(TasksState.loaded(tasks: tasks, experience: experience));
    } on Object catch (error) {
      emit(TasksState.failure(error.toString()));
    }
  }
}
