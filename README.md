# vibe_games_test

Тестовый Flutter-проект с моковым экраном Battle Pass по предоставленному Figma-макету.

Проект использует feature-based архитектуру, immutable-модели на `freezed`, `flutter_bloc` Cubit для presentation state, локальные SVG/PNG ассеты и mock snapshots прямо в коде. Бэкенда, JSON-парсинга и protobuf-генерации в проекте нет.

## Запуск

```bash
flutter pub get
flutter run
```

Если нужно обновить generated `freezed` файлы:

```bash
dart run build_runner build --delete-conflicting-outputs
```

Статическая проверка:

```bash
flutter analyze
```

## Зависимости

- `flutter_bloc`: presentation state через Cubit для demo-сценариев Battle Pass.
- `freezed_annotation`: аннотации для immutable-моделей и union states.
- `freezed`: генерация immutable-классов и union states.
- `build_runner`: запуск code generation для `freezed`.
- `flutter_svg`: рендер локальных SVG иконок.
- `flutter_lints`: базовые Flutter lint rules.

## Архитектура

```text
lib/
  src/
    app/
      app.dart
    core/
      constants/
      navigation/
      theme/
      widgets/
    features/
      battle_pass/
        data/
          datasources/
          demo/
          repositories/
        domain/
          entities/
          repositories/
        presentation/
          cubit/
          models/
          pages/
          widgets/
```

### Слои

`data`

Содержит mock data sources, demo scenarios и реализации repositories. Данные создаются напрямую как Dart-объекты.

`domain`

Содержит immutable business entities, repository contracts и минимальные client-side computed extensions. Domain хранит только server/mock snapshot поля. UI-состояния и производные presentation values не хранятся как server fields.

`presentation`

Содержит Cubit state, экраны и виджеты. `BattlePassState` является транспортным состоянием: `initial`, `loading`, `loaded`, `failure`. Подфлоу заданий Battle Pass имеет собственные `TasksCubit` / `TasksState` внутри той же `battle_pass` feature. UI-only модели, например состояние дорожки наград, лежат в `presentation/models`.

## Реализовано

- Главный экран Battle Pass из секции Figma `Battle Pass / Main`.
- Игровой фон, левая навигационная панель, сезонный header, Premium/status секция, прогресс и текущий уровень.
- Горизонтальная дорожка Battle Pass с Free и Premium наградами.
- Визуальные состояния наград: locked, claimed, available и обычное состояние.
- Premium banner с состояниями покупки, максимального уровня и CTA `Забрать все награды`, если доступно 2+ награды.
- Компактный preview заданий внутри главного экрана.
- Отдельный экран заданий как подфлоу Battle Pass.
- Состояния заданий: выполнено, доступно, неактивно, XP-награда.
- Demo scenario selector для всех моковых Battle Pass состояний.
- Локальные ассеты из Figma, объявленные через `AppIcons` / `AppImages`.

## Не входит в объём задачи

- Реальная backend-интеграция.
- JSON parsing и DTO mapping.
- Настоящий `.proto` файл или generated protobuf models.
- Реальные purchase, claim или task completion actions.
- Production navigation/routing.
- Полная пиксельная доводка всех декоративных деталей, если конкретный Figma asset недоступен для экспорта.

## Дизайн-решения

- Данные для экрана придуманы внутри проекта и оформлены как mock snapshots. Перед реализацией структура данных была зафиксирована в proto-like schema ниже.
- Domain-модели оставлены похожими на server/mock snapshot: сезон, уровни, награды, прогресс игрока и задания.
- UI-only состояние не хранится в domain. Например, `BattlePassRewardTrackItem` лежит в `presentation/models`, потому что содержит selected/claimed/available flags для текущей UI-дорожки.
- Состояние Premium banner не хранится отдельной server/domain entity. `isPremium` / `isMaxedOut` берутся из presentation helper для demo-сценариев, а `canCollectMultiReward` вычисляется из текущих доступных reward items.
- Tasks находятся внутри `battle_pass`, потому что задания принадлежат сезону Battle Pass и дают Battle Pass XP.
- Demo scenario selection является presentation/demo state и намеренно не добавляется в domain entities.

## Использование AI

AI использовался как инструмент для ускорения разработки, а не как источник финальных продуктовых решений.
С его помощью я разбирал Figma-макет, формировал первичный план экрана и проверял, какие UI-состояния нужно покрыть.
AI помогал писать черновики Flutter-виджетов, mock snapshots и README schema, после чего я вручную принимал решения по структуре, неймингу и границам слоёв.
Отдельно AI использовался для ревью кода: поиска дублирования, hardcoded asset paths, неиспользуемых моделей и несогласованных computed values.
Все критические решения по архитектуре, scope, тому что оставить в domain, а что перенести в presentation, принимались мной самостоятельно.
AI в этой работе выступал помощником для генерации вариантов, проверки гипотез и ускорения рутинных правок.

## Схема Battle Pass

Это proto-like набросок документации, а не настоящий `.proto` файл. Проект не использует protobuf, JSON serialization или дополнительную генерацию кода для этой схемы.

```proto
message BattlePassSnapshot {
  BattlePassSeason season = 1; // Полная конфигурация сезона и список заданий.
  PlayerBattlePassProgress player_progress = 2; // Прогресс игрока в текущем сезоне.
}

message BattlePassSeason {
  string id = 1; // Стабильный идентификатор сезона.
  string title = 2; // Человекочитаемое название сезона.
  int64 starts_at_ms = 3; // Время старта сезона в миллисекундах Unix epoch.
  int64 ends_at_ms = 4; // Время окончания сезона в миллисекундах Unix epoch.
  repeated BattlePassLevel levels max 100 = 5; // Упорядоченные уровни Battle Pass.
  repeated BattlePassTask tasks max 50 = 6; // Задания сезона с прогрессом игрока.
}

message BattlePassLevel {
  int32 number = 1; // Номер уровня, который показывается на дорожке прогресса.
  int32 required_experience = 2; // Опыт, нужный для достижения этого уровня.
  optional Reward free_reward = 3; // Награда бесплатной дорожки на этом уровне.
  optional Reward premium_reward = 4; // Награда Premium дорожки на этом уровне.
}

message Reward {
  string id = 1; // Стабильный идентификатор награды для claim/claimed lookup.
  string title = 2; // Человекочитаемое название награды.
  RewardType type = 3; // Категория награды для форматирования и иконографии.
  int32 amount = 4; // Количество, stack size или размер награды.
  string icon_asset = 5; // Локальный asset path или будущий remote asset id.
  RewardLane lane = 6; // Бесплатная или Premium дорожка награды.
}

message PlayerBattlePassProgress {
  BattlePassExperience experience = 1; // Текущий уровень и XP-прогресс в header Battle Pass.
  bool has_premium = 2; // Куплен ли Premium Battle Pass.
  repeated string claimed_reward_ids max 200 = 3; // ID уже забранных наград.
}

message BattlePassExperience {
  int32 level = 1; // Текущий уровень Battle Pass у игрока.
  int32 current_experience = 2; // Текущий XP внутри активного уровня.
  int32 required_experience = 3; // XP, нужный для завершения активного уровня.
  bool has_xp_buff = 4; // Нужно ли показывать XP-прогресс в buff-состоянии.
}

message BattlePassTask {
  string id = 1; // Стабильный идентификатор задания.
  string title = 2; // Короткое название задания.
  string description = 3; // Описание задания для игрока.
  int32 experience_reward = 4; // Battle Pass XP, который выдаётся за задание.
  int32 current_progress = 5; // Текущий прогресс игрока по заданию.
  int32 target_progress = 6; // Прогресс, нужный для выполнения задания.
  bool can_be_claimed = 7; // Можно ли сейчас забрать XP за выполненное задание.
}

enum RewardType {
  REWARD_TYPE_CURRENCY = 0; // Мягкая или premium-валюта.
  REWARD_TYPE_ITEM = 1; // Инвентарный предмет, сундук, skin или похожая награда.
  REWARD_TYPE_BOOSTER = 2; // Временный или расходуемый booster.
}

enum RewardLane {
  REWARD_LANE_FREE = 0; // Бесплатная дорожка наград.
  REWARD_LANE_PREMIUM = 1; // Premium дорожка наград.
}
```

## Поля server snapshot

Эти поля считаются данными, которые приходят с backend или из mock data source:

- `BattlePassSnapshot.season`
- `BattlePassSnapshot.playerProgress`
- `BattlePassSeason.id`
- `BattlePassSeason.title`
- `BattlePassSeason.startsAt`
- `BattlePassSeason.endsAt`
- `BattlePassSeason.levels`
- `BattlePassSeason.tasks`
- `BattlePassLevel.number`
- `BattlePassLevel.requiredExperience`
- `BattlePassLevel.freeReward`
- `BattlePassLevel.premiumReward`
- `Reward.id`
- `Reward.title`
- `Reward.type`
- `Reward.amount`
- `Reward.iconAsset`
- `Reward.lane`
- `PlayerBattlePassProgress.experience`
- `PlayerBattlePassProgress.hasPremium`
- `PlayerBattlePassProgress.claimedRewardIds`
- `BattlePassExperience.level`
- `BattlePassExperience.currentExperience`
- `BattlePassExperience.requiredExperience`
- `BattlePassExperience.hasXpBuff`
- `BattlePassTask.id`
- `BattlePassTask.title`
- `BattlePassTask.description`
- `BattlePassTask.experienceReward`
- `BattlePassTask.currentProgress`
- `BattlePassTask.targetProgress`
- `BattlePassTask.canBeClaimed`

## Клиентские вычисляемые состояния

Эти значения не добавляются как server fields. Они вычисляются на клиенте из snapshot или из presentation state:

- завершён ли сезон;
- locked/available/claimed состояние награды;
- выполнено ли задание;
- оставшийся прогресс задания;
- progress ratio задания;
- выбранное состояние demo/Figma scenario;
- можно ли показать CTA `Забрать все награды`.

## Моковые demo-сценарии

Battle Pass demo scenarios лежат вне domain в `features/battle_pass/data/demo`:

- `premiumNotPurchased`: Premium не куплен, доступны или частично доступны free rewards.
- `premiumPurchasedRewardAvailable`: Premium куплен, доступна хотя бы одна Premium награда.
- `maxLevelManyRewards`: игрок на максимальном уровне, есть много незабранных наград.
- `premiumPurchasedNoRewards`: Premium куплен, в текущем прогрессе нет доступных наград.
- `maxLevelNoRewards`: игрок на максимальном уровне, все доступные награды забраны.
- `seasonFinished`: дата окончания сезона уже в прошлом.
- `rewardsEndedPremium`: Premium куплен, все награды обеих дорожек забраны.
- `rewardsEndedFree`: Premium не куплен, все достижимые free rewards забраны.

Task demo scenarios принадлежат data source экрана заданий и используют отдельный fixture `TasksDemoSnapshots`. Сейчас список заданий статичный, а сценарии меняют только `BattlePassExperience`:

- Premium не куплен, XP buff выключен.
- Premium не куплен, XP buff включён.
- Premium куплен, XP buff выключен.
- Premium куплен, XP buff включён.

Battle Pass snapshots хранят собственное состояние сезона и игрока. Tasks snapshots не зависят от `BattlePassDemoSnapshots`.
