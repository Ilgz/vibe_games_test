// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_pass_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattlePassSnapshot {

 BattlePassSeason get season; PlayerBattlePassProgress get playerProgress;
/// Create a copy of BattlePassSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattlePassSnapshotCopyWith<BattlePassSnapshot> get copyWith => _$BattlePassSnapshotCopyWithImpl<BattlePassSnapshot>(this as BattlePassSnapshot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattlePassSnapshot&&(identical(other.season, season) || other.season == season)&&(identical(other.playerProgress, playerProgress) || other.playerProgress == playerProgress));
}


@override
int get hashCode => Object.hash(runtimeType,season,playerProgress);

@override
String toString() {
  return 'BattlePassSnapshot(season: $season, playerProgress: $playerProgress)';
}


}

/// @nodoc
abstract mixin class $BattlePassSnapshotCopyWith<$Res>  {
  factory $BattlePassSnapshotCopyWith(BattlePassSnapshot value, $Res Function(BattlePassSnapshot) _then) = _$BattlePassSnapshotCopyWithImpl;
@useResult
$Res call({
 BattlePassSeason season, PlayerBattlePassProgress playerProgress
});


$BattlePassSeasonCopyWith<$Res> get season;$PlayerBattlePassProgressCopyWith<$Res> get playerProgress;

}
/// @nodoc
class _$BattlePassSnapshotCopyWithImpl<$Res>
    implements $BattlePassSnapshotCopyWith<$Res> {
  _$BattlePassSnapshotCopyWithImpl(this._self, this._then);

  final BattlePassSnapshot _self;
  final $Res Function(BattlePassSnapshot) _then;

/// Create a copy of BattlePassSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? season = null,Object? playerProgress = null,}) {
  return _then(_self.copyWith(
season: null == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as BattlePassSeason,playerProgress: null == playerProgress ? _self.playerProgress : playerProgress // ignore: cast_nullable_to_non_nullable
as PlayerBattlePassProgress,
  ));
}
/// Create a copy of BattlePassSnapshot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattlePassSeasonCopyWith<$Res> get season {
  
  return $BattlePassSeasonCopyWith<$Res>(_self.season, (value) {
    return _then(_self.copyWith(season: value));
  });
}/// Create a copy of BattlePassSnapshot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerBattlePassProgressCopyWith<$Res> get playerProgress {
  
  return $PlayerBattlePassProgressCopyWith<$Res>(_self.playerProgress, (value) {
    return _then(_self.copyWith(playerProgress: value));
  });
}
}


/// Adds pattern-matching-related methods to [BattlePassSnapshot].
extension BattlePassSnapshotPatterns on BattlePassSnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattlePassSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattlePassSnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattlePassSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _BattlePassSnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattlePassSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _BattlePassSnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BattlePassSeason season,  PlayerBattlePassProgress playerProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattlePassSnapshot() when $default != null:
return $default(_that.season,_that.playerProgress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BattlePassSeason season,  PlayerBattlePassProgress playerProgress)  $default,) {final _that = this;
switch (_that) {
case _BattlePassSnapshot():
return $default(_that.season,_that.playerProgress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BattlePassSeason season,  PlayerBattlePassProgress playerProgress)?  $default,) {final _that = this;
switch (_that) {
case _BattlePassSnapshot() when $default != null:
return $default(_that.season,_that.playerProgress);case _:
  return null;

}
}

}

/// @nodoc


class _BattlePassSnapshot implements BattlePassSnapshot {
  const _BattlePassSnapshot({required this.season, required this.playerProgress});
  

@override final  BattlePassSeason season;
@override final  PlayerBattlePassProgress playerProgress;

/// Create a copy of BattlePassSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattlePassSnapshotCopyWith<_BattlePassSnapshot> get copyWith => __$BattlePassSnapshotCopyWithImpl<_BattlePassSnapshot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattlePassSnapshot&&(identical(other.season, season) || other.season == season)&&(identical(other.playerProgress, playerProgress) || other.playerProgress == playerProgress));
}


@override
int get hashCode => Object.hash(runtimeType,season,playerProgress);

@override
String toString() {
  return 'BattlePassSnapshot(season: $season, playerProgress: $playerProgress)';
}


}

/// @nodoc
abstract mixin class _$BattlePassSnapshotCopyWith<$Res> implements $BattlePassSnapshotCopyWith<$Res> {
  factory _$BattlePassSnapshotCopyWith(_BattlePassSnapshot value, $Res Function(_BattlePassSnapshot) _then) = __$BattlePassSnapshotCopyWithImpl;
@override @useResult
$Res call({
 BattlePassSeason season, PlayerBattlePassProgress playerProgress
});


@override $BattlePassSeasonCopyWith<$Res> get season;@override $PlayerBattlePassProgressCopyWith<$Res> get playerProgress;

}
/// @nodoc
class __$BattlePassSnapshotCopyWithImpl<$Res>
    implements _$BattlePassSnapshotCopyWith<$Res> {
  __$BattlePassSnapshotCopyWithImpl(this._self, this._then);

  final _BattlePassSnapshot _self;
  final $Res Function(_BattlePassSnapshot) _then;

/// Create a copy of BattlePassSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? season = null,Object? playerProgress = null,}) {
  return _then(_BattlePassSnapshot(
season: null == season ? _self.season : season // ignore: cast_nullable_to_non_nullable
as BattlePassSeason,playerProgress: null == playerProgress ? _self.playerProgress : playerProgress // ignore: cast_nullable_to_non_nullable
as PlayerBattlePassProgress,
  ));
}

/// Create a copy of BattlePassSnapshot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattlePassSeasonCopyWith<$Res> get season {
  
  return $BattlePassSeasonCopyWith<$Res>(_self.season, (value) {
    return _then(_self.copyWith(season: value));
  });
}/// Create a copy of BattlePassSnapshot
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerBattlePassProgressCopyWith<$Res> get playerProgress {
  
  return $PlayerBattlePassProgressCopyWith<$Res>(_self.playerProgress, (value) {
    return _then(_self.copyWith(playerProgress: value));
  });
}
}

// dart format on
