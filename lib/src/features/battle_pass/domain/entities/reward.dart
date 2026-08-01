import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward.freezed.dart';

enum RewardLane { free, premium }

enum RewardType { currency, item, booster }

@freezed
abstract class Reward with _$Reward {
  const factory Reward({
    required String id,
    required String title,
    required RewardType type,
    required int amount,
    required String iconAsset,
    required RewardLane lane,
  }) = _Reward;
}
