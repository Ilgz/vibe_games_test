import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibe_games_test/src/core/navigation/navigation_item.dart';

class NavigationCubit extends Cubit<NavigationItem> {
  NavigationCubit() : super(NavigationItem.battlePass);

  void select(NavigationItem item) {
    if (item == state) {
      return;
    }

    emit(item);
  }
}
