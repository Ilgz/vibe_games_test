import 'package:vibe_games_test/src/core/constants/app_images.dart';
import 'package:vibe_games_test/src/features/battle_pass/data/demo/battle_pass_demo_scenario.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_experience.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_level.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_reward_item.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_season.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_snapshot.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/battle_pass_task.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/player_battle_pass_progress.dart';
import 'package:vibe_games_test/src/features/battle_pass/domain/entities/reward.dart';

class BattlePassDemoSnapshots {
  const BattlePassDemoSnapshots._();

  static BattlePassSnapshot snapshot(BattlePassDemoScenario scenario) {
    return switch (scenario) {
      BattlePassDemoScenario.premiumNotPurchased => premiumNotPurchased,
      BattlePassDemoScenario.premiumPurchasedRewardAvailable =>
        premiumPurchasedRewardAvailable,
      BattlePassDemoScenario.maxLevelManyRewards => maxLevelManyRewards,
      BattlePassDemoScenario.premiumPurchasedNoRewards =>
        premiumPurchasedNoRewards,
      BattlePassDemoScenario.maxLevelNoRewards => maxLevelNoRewards,
      BattlePassDemoScenario.seasonFinished => seasonFinished,
      BattlePassDemoScenario.rewardsEndedPremium => rewardsEndedPremium,
      BattlePassDemoScenario.rewardsEndedFree => rewardsEndedFree,
    };
  }

  static BattlePassSnapshot get premiumNotPurchased {
    return BattlePassSnapshot(
      season: _baseSeason(),
      playerProgress: PlayerBattlePassProgress(
        experience: _experience(level: 4, current: 120, required: 1400),
        hasPremium: false,
        claimedRewardIds: _rewardIds(
          freeLevels: [1, 2],
          premiumLevels: const [],
        ),
      ),
    );
  }

  static BattlePassSnapshot get premiumPurchasedRewardAvailable {
    return BattlePassSnapshot(
      season: _baseSeason(),
      playerProgress: PlayerBattlePassProgress(
        experience: _experience(level: 5, current: 180, required: 1500),
        hasPremium: true,
        claimedRewardIds: _rewardIds(
          freeLevels: [1, 2, 3],
          premiumLevels: [1, 2],
        ),
      ),
    );
  }

  static BattlePassSnapshot get maxLevelManyRewards {
    return BattlePassSnapshot(
      season: _baseSeason(),
      playerProgress: PlayerBattlePassProgress(
        experience: _experience(level: _maxLevel, current: 2400, required: 0),
        hasPremium: true,
        claimedRewardIds: _rewardIds(
          freeLevels: [1, 2, 3, 4],
          premiumLevels: [1, 2],
        ),
      ),
    );
  }

  static BattlePassSnapshot get premiumPurchasedNoRewards {
    return BattlePassSnapshot(
      season: _baseSeason(),
      playerProgress: PlayerBattlePassProgress(
        experience: _experience(level: 7, current: 90, required: 1700),
        hasPremium: true,
        claimedRewardIds: _rewardIds(
          freeLevels: _levelsRange(1, 7),
          premiumLevels: _levelsRange(1, 7),
        ),
      ),
    );
  }

  static BattlePassSnapshot get maxLevelNoRewards {
    return BattlePassSnapshot(
      season: _baseSeason(),
      playerProgress: PlayerBattlePassProgress(
        experience: _experience(level: _maxLevel, current: 0, required: 0),
        hasPremium: true,
        claimedRewardIds: _allRewardIds,
      ),
    );
  }

  static BattlePassSnapshot get seasonFinished {
    return BattlePassSnapshot(
      season: _baseSeason(
        startsAt: DateTime.utc(2026),
        endsAt: DateTime.utc(2026, 2),
      ),
      playerProgress: PlayerBattlePassProgress(
        experience: _experience(level: 8, current: 320, required: 1800),
        hasPremium: false,
        claimedRewardIds: _rewardIds(
          freeLevels: _levelsRange(1, 5),
          premiumLevels: const [],
        ),
      ),
    );
  }

  static BattlePassSnapshot get rewardsEndedPremium {
    return BattlePassSnapshot(
      season: _baseSeason(),
      playerProgress: PlayerBattlePassProgress(
        experience: _experience(level: 8, current: 520, required: 1800),
        hasPremium: true,
        claimedRewardIds: _allRewardIds,
      ),
    );
  }

  static BattlePassSnapshot get rewardsEndedFree {
    return BattlePassSnapshot(
      season: _baseSeason(),
      playerProgress: PlayerBattlePassProgress(
        experience: _experience(level: 8, current: 1600, required: 1800),
        hasPremium: false,
        claimedRewardIds: _rewardIds(
          freeLevels: _levelsRange(1, _maxLevel),
          premiumLevels: const [],
        ),
      ),
    );
  }

  static BattlePassSeason _baseSeason({DateTime? startsAt, DateTime? endsAt}) {
    return BattlePassSeason(
      id: 'season_founders_001',
      title: 'Founders Season',
      startsAt: startsAt ?? DateTime.utc(2026, 7),
      endsAt: endsAt ?? DateTime.utc(2026, 9),
      levels: _baseLevels,
      tasks: _baseTasks,
    );
  }

  static BattlePassExperience _experience({
    required int level,
    required int current,
    required int required,
  }) {
    return BattlePassExperience(
      level: level,
      currentExperience: current,
      requiredExperience: required,
      hasXpBuff: false,
    );
  }

  static List<BattlePassLevel> get _baseLevels {
    return List.generate(_maxLevel, (index) {
      final level = index + 1;

      return BattlePassLevel(
        number: level,
        requiredExperience: _experienceForLevel(level),
        freeReward: _freeReward(level),
        premiumReward: _premiumReward(level),
      );
    });
  }

  static List<BattlePassTask> get _baseTasks {
    return const [
      BattlePassTask(
        id: 'id1',
        title: 'title1',
        description: 'Используйте определенный предмет (Энергетик) 10 раз.',
        experienceReward: 25,
        currentProgress: 3,
        targetProgress: 5,
        canBeClaimed: false,
      ),
      BattlePassTask(
        id: 'id2',
        title: 'title2',
        description: 'Используйте определенный предмет (Энергетик) 10 раз.',
        experienceReward: 100,
        currentProgress: 5,
        targetProgress: 5,
        canBeClaimed: false,
      ),
      BattlePassTask(
        id: 'id3',
        title: 'title3',
        description: 'Используйте определенный предмет (Энергетик) 10 раз.',
        experienceReward: 250,
        currentProgress: 5,
        targetProgress: 5,
        canBeClaimed: true,
      ),
      BattlePassTask(
        id: 'id4',
        title: 'title4',
        description: 'Используйте определенный предмет (Энергетик) 10 раз.',
        experienceReward: 100,
        currentProgress: 5,
        targetProgress: 5,
        canBeClaimed: false,
      ),
      BattlePassTask(
        id: 'id5',
        title: 'title5',
        description: 'Используйте определенный предмет (Энергетик) 10 раз.',
        experienceReward: 100,
        currentProgress: 5,
        targetProgress: 5,
        canBeClaimed: false,
      ),
      BattlePassTask(
        id: 'id6',
        title: 'title6',
        description: 'Используйте определенный предмет (Энергетик) 10 раз.',
        experienceReward: 100,
        currentProgress: 5,
        targetProgress: 5,
        canBeClaimed: false,
      ),
      BattlePassTask(
        id: 'id7',
        title: 'title7',
        description: 'Используйте определенный предмет (Энергетик) 10 раз.',
        experienceReward: 100,
        currentProgress: 5,
        targetProgress: 5,
        canBeClaimed: false,
      ),
      BattlePassTask(
        id: 'id8',
        title: 'title8',
        description: 'Используйте определенный предмет (Энергетик) 10 раз.',
        experienceReward: 100,
        currentProgress: 5,
        targetProgress: 5,
        canBeClaimed: false,
      ),
    ];
  }

  static Reward _freeReward(int level) {
    final type = switch (level % 3) {
      0 => RewardType.booster,
      1 => RewardType.currency,
      _ => RewardType.item,
    };
    final item = _rewardItem(level);

    return Reward(
      id: _freeRewardId(level),
      title: switch (type) {
        RewardType.currency => 'Coins',
        RewardType.item => item.name,
        RewardType.booster => 'XP Booster',
      },
      type: type,
      amount: switch (type) {
        RewardType.currency => 100 + level * 20,
        RewardType.item => 1,
        RewardType.booster => level <= 10 ? 1 : 2,
      },
      iconAsset: switch (type) {
        RewardType.currency => item.imageAsset,
        RewardType.item => item.imageAsset,
        RewardType.booster => AppImages.battle_pass_reward_xp,
      },
      lane: RewardLane.free,
    );
  }

  static Reward _premiumReward(int level) {
    final type = switch (level % 4) {
      0 => RewardType.booster,
      1 => RewardType.currency,
      _ => RewardType.item,
    };
    final item = _rewardItem(level, offset: 7);

    return Reward(
      id: _premiumRewardId(level),
      title: switch (type) {
        RewardType.currency => 'Gems',
        RewardType.item => item.name,
        RewardType.booster => 'Premium XP Booster',
      },
      type: type,
      amount: switch (type) {
        RewardType.currency => 25 + level * 5,
        RewardType.item => 1,
        RewardType.booster => 2,
      },
      iconAsset: switch (type) {
        RewardType.currency => item.imageAsset,
        RewardType.item => item.imageAsset,
        RewardType.booster => AppImages.battle_pass_reward_xp,
      },
      lane: RewardLane.premium,
    );
  }

  static BattlePassRewardItem _rewardItem(int level, {int offset = 0}) {
    final items = BattlePassRewardItem.values;

    return items[(level - 1 + offset) % items.length];
  }

  static List<String> _rewardIds({
    required List<int> freeLevels,
    required List<int> premiumLevels,
  }) {
    return [
      ...freeLevels.map(_freeRewardId),
      ...premiumLevels.map(_premiumRewardId),
    ];
  }

  static List<int> _levelsRange(int start, int end) {
    return List.generate(end - start + 1, (index) => start + index);
  }

  static List<String> get _allRewardIds {
    return _rewardIds(
      freeLevels: _levelsRange(1, _maxLevel),
      premiumLevels: _levelsRange(1, _maxLevel),
    );
  }

  static String _freeRewardId(int level) => 'reward_level_${level}_free';

  static String _premiumRewardId(int level) => 'reward_level_${level}_premium';

  static int _experienceForLevel(int level) {
    if (level <= 1) {
      return 0;
    }

    return 250 * (level - 1) + 50 * (level - 1) * (level - 2);
  }

  static const int _maxLevel = 20;
}
