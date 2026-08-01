import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/demo/battle_pass_demo_scenario.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/repositories/battle_pass_demo_repository.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_reward_item.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/cubit/battle_pass_state.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/models/battle_pass_reward_track_item.dart';

class BattlePassCubit extends Cubit<BattlePassState> {
  BattlePassCubit({
    required BattlePassDemoRepository repository,
    BattlePassDemoScenario initialScenario =
        BattlePassDemoScenario.rewardsEndedFree,
  }) : _repository = repository,
       _scenario = initialScenario,
       super(const BattlePassState.initial());

  final BattlePassDemoRepository _repository;
  BattlePassDemoScenario _scenario;
  int _selectedRewardIndex = 0;
  List<BattlePassRewardTrackItem> _rewardTrackItems = const [];

  Future<void> load() async {
    await _loadScenario(_scenario);
  }

  Future<void> setDemoScenario(BattlePassDemoScenario scenario) async {
    _scenario = scenario;
    await _loadScenario(scenario);
  }

  void selectRewardItem(int index) {
    if (index < 0 || index >= _rewardTrackItemsCount) {
      return;
    }

    state.maybeWhen(
      loaded: (snapshot, scenario, rewardTrackItems) {
        _selectedRewardIndex = index;
        _rewardTrackItems = _selectRewardItem(rewardTrackItems, index);
        emit(
          BattlePassState.loaded(
            snapshot: snapshot,
            scenario: scenario,
            rewardTrackItems: _rewardTrackItems,
          ),
        );
      },
      orElse: () {
        _selectedRewardIndex = index;
      },
    );
  }

  void claimRewardItem(int index) {
    if (index < 0 || index >= _rewardTrackItemsCount) {
      return;
    }

    state.maybeWhen(
      loaded: (snapshot, scenario, rewardTrackItems) {
        final reward = rewardTrackItems[index];
        if (!reward.canBeClaimed || reward.hasClaimed) {
          return;
        }

        _selectedRewardIndex = index;
        _rewardTrackItems = List.generate(rewardTrackItems.length, (itemIndex) {
          final item = rewardTrackItems[itemIndex];

          if (itemIndex != index) {
            return item.copyWith(isSelected: false);
          }

          return item.copyWith(
            canBeClaimed: false,
            hasClaimed: true,
            isSelected: true,
          );
        });

        emit(
          BattlePassState.loaded(
            snapshot: snapshot,
            scenario: scenario,
            rewardTrackItems: _rewardTrackItems,
          ),
        );
      },
      orElse: () {},
    );
  }

  void claimAllRewardItems() {
    state.maybeWhen(
      loaded: (snapshot, scenario, rewardTrackItems) {
        final canClaimAny = rewardTrackItems.any(
          (reward) => reward.canBeClaimed && !reward.hasClaimed,
        );

        if (!canClaimAny) {
          return;
        }

        _rewardTrackItems = List.generate(rewardTrackItems.length, (index) {
          final reward = rewardTrackItems[index];

          if (!reward.canBeClaimed || reward.hasClaimed) {
            return reward.copyWith(isSelected: index == _selectedRewardIndex);
          }

          return reward.copyWith(
            canBeClaimed: false,
            hasClaimed: true,
            isSelected: index == _selectedRewardIndex,
          );
        });

        emit(
          BattlePassState.loaded(
            snapshot: snapshot,
            scenario: scenario,
            rewardTrackItems: _rewardTrackItems,
          ),
        );
      },
      orElse: () {},
    );
  }

  Future<void> _loadScenario(BattlePassDemoScenario scenario) async {
    emit(const BattlePassState.loading());

    try {
      final snapshot = await _repository.getBattlePass(scenario: scenario);
      _rewardTrackItems = _buildRewardTrackItems();
      emit(
        BattlePassState.loaded(
          snapshot: snapshot,
          scenario: scenario,
          rewardTrackItems: _rewardTrackItems,
        ),
      );
    } on Object catch (error) {
      emit(BattlePassState.failure(error.toString()));
    }
  }

  List<BattlePassRewardTrackItem> _buildRewardTrackItems() {
    return List.generate(_rewardTrackItemsCount, (index) {
      return BattlePassRewardTrackItem(
        item: BattlePassRewardItem.values[index],
        amount: index == 3 ? 16 : 1,
        isSelected: index == _selectedRewardIndex,
        isPremium: index == 0 || index == 13,
        canBeClaimed: index == 3 || index == 4,
        hasClaimed: index < 3,
        isGift: index == 4,
      );
    });
  }

  List<BattlePassRewardTrackItem> _selectRewardItem(
    List<BattlePassRewardTrackItem> rewardTrackItems,
    int selectedIndex,
  ) {
    return List.generate(rewardTrackItems.length, (index) {
      return rewardTrackItems[index].copyWith(
        isSelected: index == selectedIndex,
      );
    });
  }
}

const int _rewardTrackItemsCount = 14;
