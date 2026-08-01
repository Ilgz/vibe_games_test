// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_pass_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattlePassTask {

 String get id; String get title; String get description; int get experienceReward; int get currentProgress; int get targetProgress; bool get canBeClaimed;
/// Create a copy of BattlePassTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattlePassTaskCopyWith<BattlePassTask> get copyWith => _$BattlePassTaskCopyWithImpl<BattlePassTask>(this as BattlePassTask, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattlePassTask&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.experienceReward, experienceReward) || other.experienceReward == experienceReward)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.targetProgress, targetProgress) || other.targetProgress == targetProgress)&&(identical(other.canBeClaimed, canBeClaimed) || other.canBeClaimed == canBeClaimed));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,experienceReward,currentProgress,targetProgress,canBeClaimed);

@override
String toString() {
  return 'BattlePassTask(id: $id, title: $title, description: $description, experienceReward: $experienceReward, currentProgress: $currentProgress, targetProgress: $targetProgress, canBeClaimed: $canBeClaimed)';
}


}

/// @nodoc
abstract mixin class $BattlePassTaskCopyWith<$Res>  {
  factory $BattlePassTaskCopyWith(BattlePassTask value, $Res Function(BattlePassTask) _then) = _$BattlePassTaskCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, int experienceReward, int currentProgress, int targetProgress, bool canBeClaimed
});




}
/// @nodoc
class _$BattlePassTaskCopyWithImpl<$Res>
    implements $BattlePassTaskCopyWith<$Res> {
  _$BattlePassTaskCopyWithImpl(this._self, this._then);

  final BattlePassTask _self;
  final $Res Function(BattlePassTask) _then;

/// Create a copy of BattlePassTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? experienceReward = null,Object? currentProgress = null,Object? targetProgress = null,Object? canBeClaimed = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,experienceReward: null == experienceReward ? _self.experienceReward : experienceReward // ignore: cast_nullable_to_non_nullable
as int,currentProgress: null == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as int,targetProgress: null == targetProgress ? _self.targetProgress : targetProgress // ignore: cast_nullable_to_non_nullable
as int,canBeClaimed: null == canBeClaimed ? _self.canBeClaimed : canBeClaimed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BattlePassTask].
extension BattlePassTaskPatterns on BattlePassTask {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattlePassTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattlePassTask() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattlePassTask value)  $default,){
final _that = this;
switch (_that) {
case _BattlePassTask():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattlePassTask value)?  $default,){
final _that = this;
switch (_that) {
case _BattlePassTask() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int experienceReward,  int currentProgress,  int targetProgress,  bool canBeClaimed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattlePassTask() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.experienceReward,_that.currentProgress,_that.targetProgress,_that.canBeClaimed);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  int experienceReward,  int currentProgress,  int targetProgress,  bool canBeClaimed)  $default,) {final _that = this;
switch (_that) {
case _BattlePassTask():
return $default(_that.id,_that.title,_that.description,_that.experienceReward,_that.currentProgress,_that.targetProgress,_that.canBeClaimed);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  int experienceReward,  int currentProgress,  int targetProgress,  bool canBeClaimed)?  $default,) {final _that = this;
switch (_that) {
case _BattlePassTask() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.experienceReward,_that.currentProgress,_that.targetProgress,_that.canBeClaimed);case _:
  return null;

}
}

}

/// @nodoc


class _BattlePassTask implements BattlePassTask {
  const _BattlePassTask({required this.id, required this.title, required this.description, required this.experienceReward, required this.currentProgress, required this.targetProgress, required this.canBeClaimed});
  

@override final  String id;
@override final  String title;
@override final  String description;
@override final  int experienceReward;
@override final  int currentProgress;
@override final  int targetProgress;
@override final  bool canBeClaimed;

/// Create a copy of BattlePassTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattlePassTaskCopyWith<_BattlePassTask> get copyWith => __$BattlePassTaskCopyWithImpl<_BattlePassTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattlePassTask&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.experienceReward, experienceReward) || other.experienceReward == experienceReward)&&(identical(other.currentProgress, currentProgress) || other.currentProgress == currentProgress)&&(identical(other.targetProgress, targetProgress) || other.targetProgress == targetProgress)&&(identical(other.canBeClaimed, canBeClaimed) || other.canBeClaimed == canBeClaimed));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,experienceReward,currentProgress,targetProgress,canBeClaimed);

@override
String toString() {
  return 'BattlePassTask(id: $id, title: $title, description: $description, experienceReward: $experienceReward, currentProgress: $currentProgress, targetProgress: $targetProgress, canBeClaimed: $canBeClaimed)';
}


}

/// @nodoc
abstract mixin class _$BattlePassTaskCopyWith<$Res> implements $BattlePassTaskCopyWith<$Res> {
  factory _$BattlePassTaskCopyWith(_BattlePassTask value, $Res Function(_BattlePassTask) _then) = __$BattlePassTaskCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, int experienceReward, int currentProgress, int targetProgress, bool canBeClaimed
});




}
/// @nodoc
class __$BattlePassTaskCopyWithImpl<$Res>
    implements _$BattlePassTaskCopyWith<$Res> {
  __$BattlePassTaskCopyWithImpl(this._self, this._then);

  final _BattlePassTask _self;
  final $Res Function(_BattlePassTask) _then;

/// Create a copy of BattlePassTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? experienceReward = null,Object? currentProgress = null,Object? targetProgress = null,Object? canBeClaimed = null,}) {
  return _then(_BattlePassTask(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,experienceReward: null == experienceReward ? _self.experienceReward : experienceReward // ignore: cast_nullable_to_non_nullable
as int,currentProgress: null == currentProgress ? _self.currentProgress : currentProgress // ignore: cast_nullable_to_non_nullable
as int,targetProgress: null == targetProgress ? _self.targetProgress : targetProgress // ignore: cast_nullable_to_non_nullable
as int,canBeClaimed: null == canBeClaimed ? _self.canBeClaimed : canBeClaimed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
