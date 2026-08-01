// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_pass_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattlePassLevel {

 int get number; int get requiredExperience; Reward? get freeReward; Reward? get premiumReward;
/// Create a copy of BattlePassLevel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattlePassLevelCopyWith<BattlePassLevel> get copyWith => _$BattlePassLevelCopyWithImpl<BattlePassLevel>(this as BattlePassLevel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattlePassLevel&&(identical(other.number, number) || other.number == number)&&(identical(other.requiredExperience, requiredExperience) || other.requiredExperience == requiredExperience)&&(identical(other.freeReward, freeReward) || other.freeReward == freeReward)&&(identical(other.premiumReward, premiumReward) || other.premiumReward == premiumReward));
}


@override
int get hashCode => Object.hash(runtimeType,number,requiredExperience,freeReward,premiumReward);

@override
String toString() {
  return 'BattlePassLevel(number: $number, requiredExperience: $requiredExperience, freeReward: $freeReward, premiumReward: $premiumReward)';
}


}

/// @nodoc
abstract mixin class $BattlePassLevelCopyWith<$Res>  {
  factory $BattlePassLevelCopyWith(BattlePassLevel value, $Res Function(BattlePassLevel) _then) = _$BattlePassLevelCopyWithImpl;
@useResult
$Res call({
 int number, int requiredExperience, Reward? freeReward, Reward? premiumReward
});


$RewardCopyWith<$Res>? get freeReward;$RewardCopyWith<$Res>? get premiumReward;

}
/// @nodoc
class _$BattlePassLevelCopyWithImpl<$Res>
    implements $BattlePassLevelCopyWith<$Res> {
  _$BattlePassLevelCopyWithImpl(this._self, this._then);

  final BattlePassLevel _self;
  final $Res Function(BattlePassLevel) _then;

/// Create a copy of BattlePassLevel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? requiredExperience = null,Object? freeReward = freezed,Object? premiumReward = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,requiredExperience: null == requiredExperience ? _self.requiredExperience : requiredExperience // ignore: cast_nullable_to_non_nullable
as int,freeReward: freezed == freeReward ? _self.freeReward : freeReward // ignore: cast_nullable_to_non_nullable
as Reward?,premiumReward: freezed == premiumReward ? _self.premiumReward : premiumReward // ignore: cast_nullable_to_non_nullable
as Reward?,
  ));
}
/// Create a copy of BattlePassLevel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res>? get freeReward {
    if (_self.freeReward == null) {
    return null;
  }

  return $RewardCopyWith<$Res>(_self.freeReward!, (value) {
    return _then(_self.copyWith(freeReward: value));
  });
}/// Create a copy of BattlePassLevel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res>? get premiumReward {
    if (_self.premiumReward == null) {
    return null;
  }

  return $RewardCopyWith<$Res>(_self.premiumReward!, (value) {
    return _then(_self.copyWith(premiumReward: value));
  });
}
}


/// Adds pattern-matching-related methods to [BattlePassLevel].
extension BattlePassLevelPatterns on BattlePassLevel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattlePassLevel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattlePassLevel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattlePassLevel value)  $default,){
final _that = this;
switch (_that) {
case _BattlePassLevel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattlePassLevel value)?  $default,){
final _that = this;
switch (_that) {
case _BattlePassLevel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int number,  int requiredExperience,  Reward? freeReward,  Reward? premiumReward)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattlePassLevel() when $default != null:
return $default(_that.number,_that.requiredExperience,_that.freeReward,_that.premiumReward);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int number,  int requiredExperience,  Reward? freeReward,  Reward? premiumReward)  $default,) {final _that = this;
switch (_that) {
case _BattlePassLevel():
return $default(_that.number,_that.requiredExperience,_that.freeReward,_that.premiumReward);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int number,  int requiredExperience,  Reward? freeReward,  Reward? premiumReward)?  $default,) {final _that = this;
switch (_that) {
case _BattlePassLevel() when $default != null:
return $default(_that.number,_that.requiredExperience,_that.freeReward,_that.premiumReward);case _:
  return null;

}
}

}

/// @nodoc


class _BattlePassLevel implements BattlePassLevel {
  const _BattlePassLevel({required this.number, required this.requiredExperience, this.freeReward, this.premiumReward});
  

@override final  int number;
@override final  int requiredExperience;
@override final  Reward? freeReward;
@override final  Reward? premiumReward;

/// Create a copy of BattlePassLevel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattlePassLevelCopyWith<_BattlePassLevel> get copyWith => __$BattlePassLevelCopyWithImpl<_BattlePassLevel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattlePassLevel&&(identical(other.number, number) || other.number == number)&&(identical(other.requiredExperience, requiredExperience) || other.requiredExperience == requiredExperience)&&(identical(other.freeReward, freeReward) || other.freeReward == freeReward)&&(identical(other.premiumReward, premiumReward) || other.premiumReward == premiumReward));
}


@override
int get hashCode => Object.hash(runtimeType,number,requiredExperience,freeReward,premiumReward);

@override
String toString() {
  return 'BattlePassLevel(number: $number, requiredExperience: $requiredExperience, freeReward: $freeReward, premiumReward: $premiumReward)';
}


}

/// @nodoc
abstract mixin class _$BattlePassLevelCopyWith<$Res> implements $BattlePassLevelCopyWith<$Res> {
  factory _$BattlePassLevelCopyWith(_BattlePassLevel value, $Res Function(_BattlePassLevel) _then) = __$BattlePassLevelCopyWithImpl;
@override @useResult
$Res call({
 int number, int requiredExperience, Reward? freeReward, Reward? premiumReward
});


@override $RewardCopyWith<$Res>? get freeReward;@override $RewardCopyWith<$Res>? get premiumReward;

}
/// @nodoc
class __$BattlePassLevelCopyWithImpl<$Res>
    implements _$BattlePassLevelCopyWith<$Res> {
  __$BattlePassLevelCopyWithImpl(this._self, this._then);

  final _BattlePassLevel _self;
  final $Res Function(_BattlePassLevel) _then;

/// Create a copy of BattlePassLevel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? requiredExperience = null,Object? freeReward = freezed,Object? premiumReward = freezed,}) {
  return _then(_BattlePassLevel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,requiredExperience: null == requiredExperience ? _self.requiredExperience : requiredExperience // ignore: cast_nullable_to_non_nullable
as int,freeReward: freezed == freeReward ? _self.freeReward : freeReward // ignore: cast_nullable_to_non_nullable
as Reward?,premiumReward: freezed == premiumReward ? _self.premiumReward : premiumReward // ignore: cast_nullable_to_non_nullable
as Reward?,
  ));
}

/// Create a copy of BattlePassLevel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res>? get freeReward {
    if (_self.freeReward == null) {
    return null;
  }

  return $RewardCopyWith<$Res>(_self.freeReward!, (value) {
    return _then(_self.copyWith(freeReward: value));
  });
}/// Create a copy of BattlePassLevel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res>? get premiumReward {
    if (_self.premiumReward == null) {
    return null;
  }

  return $RewardCopyWith<$Res>(_self.premiumReward!, (value) {
    return _then(_self.copyWith(premiumReward: value));
  });
}
}

// dart format on
