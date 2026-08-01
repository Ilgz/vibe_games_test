// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_battle_pass_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerBattlePassProgress {

 BattlePassExperience get experience; bool get hasPremium; List<String> get claimedRewardIds;
/// Create a copy of PlayerBattlePassProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerBattlePassProgressCopyWith<PlayerBattlePassProgress> get copyWith => _$PlayerBattlePassProgressCopyWithImpl<PlayerBattlePassProgress>(this as PlayerBattlePassProgress, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerBattlePassProgress&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.hasPremium, hasPremium) || other.hasPremium == hasPremium)&&const DeepCollectionEquality().equals(other.claimedRewardIds, claimedRewardIds));
}


@override
int get hashCode => Object.hash(runtimeType,experience,hasPremium,const DeepCollectionEquality().hash(claimedRewardIds));

@override
String toString() {
  return 'PlayerBattlePassProgress(experience: $experience, hasPremium: $hasPremium, claimedRewardIds: $claimedRewardIds)';
}


}

/// @nodoc
abstract mixin class $PlayerBattlePassProgressCopyWith<$Res>  {
  factory $PlayerBattlePassProgressCopyWith(PlayerBattlePassProgress value, $Res Function(PlayerBattlePassProgress) _then) = _$PlayerBattlePassProgressCopyWithImpl;
@useResult
$Res call({
 BattlePassExperience experience, bool hasPremium, List<String> claimedRewardIds
});


$BattlePassExperienceCopyWith<$Res> get experience;

}
/// @nodoc
class _$PlayerBattlePassProgressCopyWithImpl<$Res>
    implements $PlayerBattlePassProgressCopyWith<$Res> {
  _$PlayerBattlePassProgressCopyWithImpl(this._self, this._then);

  final PlayerBattlePassProgress _self;
  final $Res Function(PlayerBattlePassProgress) _then;

/// Create a copy of PlayerBattlePassProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? experience = null,Object? hasPremium = null,Object? claimedRewardIds = null,}) {
  return _then(_self.copyWith(
experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as BattlePassExperience,hasPremium: null == hasPremium ? _self.hasPremium : hasPremium // ignore: cast_nullable_to_non_nullable
as bool,claimedRewardIds: null == claimedRewardIds ? _self.claimedRewardIds : claimedRewardIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of PlayerBattlePassProgress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattlePassExperienceCopyWith<$Res> get experience {
  
  return $BattlePassExperienceCopyWith<$Res>(_self.experience, (value) {
    return _then(_self.copyWith(experience: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlayerBattlePassProgress].
extension PlayerBattlePassProgressPatterns on PlayerBattlePassProgress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerBattlePassProgress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerBattlePassProgress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerBattlePassProgress value)  $default,){
final _that = this;
switch (_that) {
case _PlayerBattlePassProgress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerBattlePassProgress value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerBattlePassProgress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BattlePassExperience experience,  bool hasPremium,  List<String> claimedRewardIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerBattlePassProgress() when $default != null:
return $default(_that.experience,_that.hasPremium,_that.claimedRewardIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BattlePassExperience experience,  bool hasPremium,  List<String> claimedRewardIds)  $default,) {final _that = this;
switch (_that) {
case _PlayerBattlePassProgress():
return $default(_that.experience,_that.hasPremium,_that.claimedRewardIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BattlePassExperience experience,  bool hasPremium,  List<String> claimedRewardIds)?  $default,) {final _that = this;
switch (_that) {
case _PlayerBattlePassProgress() when $default != null:
return $default(_that.experience,_that.hasPremium,_that.claimedRewardIds);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerBattlePassProgress implements PlayerBattlePassProgress {
  const _PlayerBattlePassProgress({required this.experience, required this.hasPremium, required final  List<String> claimedRewardIds}): _claimedRewardIds = claimedRewardIds;
  

@override final  BattlePassExperience experience;
@override final  bool hasPremium;
 final  List<String> _claimedRewardIds;
@override List<String> get claimedRewardIds {
  if (_claimedRewardIds is EqualUnmodifiableListView) return _claimedRewardIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_claimedRewardIds);
}


/// Create a copy of PlayerBattlePassProgress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerBattlePassProgressCopyWith<_PlayerBattlePassProgress> get copyWith => __$PlayerBattlePassProgressCopyWithImpl<_PlayerBattlePassProgress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerBattlePassProgress&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.hasPremium, hasPremium) || other.hasPremium == hasPremium)&&const DeepCollectionEquality().equals(other._claimedRewardIds, _claimedRewardIds));
}


@override
int get hashCode => Object.hash(runtimeType,experience,hasPremium,const DeepCollectionEquality().hash(_claimedRewardIds));

@override
String toString() {
  return 'PlayerBattlePassProgress(experience: $experience, hasPremium: $hasPremium, claimedRewardIds: $claimedRewardIds)';
}


}

/// @nodoc
abstract mixin class _$PlayerBattlePassProgressCopyWith<$Res> implements $PlayerBattlePassProgressCopyWith<$Res> {
  factory _$PlayerBattlePassProgressCopyWith(_PlayerBattlePassProgress value, $Res Function(_PlayerBattlePassProgress) _then) = __$PlayerBattlePassProgressCopyWithImpl;
@override @useResult
$Res call({
 BattlePassExperience experience, bool hasPremium, List<String> claimedRewardIds
});


@override $BattlePassExperienceCopyWith<$Res> get experience;

}
/// @nodoc
class __$PlayerBattlePassProgressCopyWithImpl<$Res>
    implements _$PlayerBattlePassProgressCopyWith<$Res> {
  __$PlayerBattlePassProgressCopyWithImpl(this._self, this._then);

  final _PlayerBattlePassProgress _self;
  final $Res Function(_PlayerBattlePassProgress) _then;

/// Create a copy of PlayerBattlePassProgress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? experience = null,Object? hasPremium = null,Object? claimedRewardIds = null,}) {
  return _then(_PlayerBattlePassProgress(
experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as BattlePassExperience,hasPremium: null == hasPremium ? _self.hasPremium : hasPremium // ignore: cast_nullable_to_non_nullable
as bool,claimedRewardIds: null == claimedRewardIds ? _self._claimedRewardIds : claimedRewardIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of PlayerBattlePassProgress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattlePassExperienceCopyWith<$Res> get experience {
  
  return $BattlePassExperienceCopyWith<$Res>(_self.experience, (value) {
    return _then(_self.copyWith(experience: value));
  });
}
}

// dart format on
