// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_pass_experience.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattlePassExperience {

 int get level; int get currentExperience; int get requiredExperience; bool get hasXpBuff;
/// Create a copy of BattlePassExperience
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattlePassExperienceCopyWith<BattlePassExperience> get copyWith => _$BattlePassExperienceCopyWithImpl<BattlePassExperience>(this as BattlePassExperience, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattlePassExperience&&(identical(other.level, level) || other.level == level)&&(identical(other.currentExperience, currentExperience) || other.currentExperience == currentExperience)&&(identical(other.requiredExperience, requiredExperience) || other.requiredExperience == requiredExperience)&&(identical(other.hasXpBuff, hasXpBuff) || other.hasXpBuff == hasXpBuff));
}


@override
int get hashCode => Object.hash(runtimeType,level,currentExperience,requiredExperience,hasXpBuff);

@override
String toString() {
  return 'BattlePassExperience(level: $level, currentExperience: $currentExperience, requiredExperience: $requiredExperience, hasXpBuff: $hasXpBuff)';
}


}

/// @nodoc
abstract mixin class $BattlePassExperienceCopyWith<$Res>  {
  factory $BattlePassExperienceCopyWith(BattlePassExperience value, $Res Function(BattlePassExperience) _then) = _$BattlePassExperienceCopyWithImpl;
@useResult
$Res call({
 int level, int currentExperience, int requiredExperience, bool hasXpBuff
});




}
/// @nodoc
class _$BattlePassExperienceCopyWithImpl<$Res>
    implements $BattlePassExperienceCopyWith<$Res> {
  _$BattlePassExperienceCopyWithImpl(this._self, this._then);

  final BattlePassExperience _self;
  final $Res Function(BattlePassExperience) _then;

/// Create a copy of BattlePassExperience
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? currentExperience = null,Object? requiredExperience = null,Object? hasXpBuff = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,currentExperience: null == currentExperience ? _self.currentExperience : currentExperience // ignore: cast_nullable_to_non_nullable
as int,requiredExperience: null == requiredExperience ? _self.requiredExperience : requiredExperience // ignore: cast_nullable_to_non_nullable
as int,hasXpBuff: null == hasXpBuff ? _self.hasXpBuff : hasXpBuff // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BattlePassExperience].
extension BattlePassExperiencePatterns on BattlePassExperience {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattlePassExperience value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattlePassExperience() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattlePassExperience value)  $default,){
final _that = this;
switch (_that) {
case _BattlePassExperience():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattlePassExperience value)?  $default,){
final _that = this;
switch (_that) {
case _BattlePassExperience() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int level,  int currentExperience,  int requiredExperience,  bool hasXpBuff)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattlePassExperience() when $default != null:
return $default(_that.level,_that.currentExperience,_that.requiredExperience,_that.hasXpBuff);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int level,  int currentExperience,  int requiredExperience,  bool hasXpBuff)  $default,) {final _that = this;
switch (_that) {
case _BattlePassExperience():
return $default(_that.level,_that.currentExperience,_that.requiredExperience,_that.hasXpBuff);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int level,  int currentExperience,  int requiredExperience,  bool hasXpBuff)?  $default,) {final _that = this;
switch (_that) {
case _BattlePassExperience() when $default != null:
return $default(_that.level,_that.currentExperience,_that.requiredExperience,_that.hasXpBuff);case _:
  return null;

}
}

}

/// @nodoc


class _BattlePassExperience implements BattlePassExperience {
  const _BattlePassExperience({required this.level, required this.currentExperience, required this.requiredExperience, required this.hasXpBuff});
  

@override final  int level;
@override final  int currentExperience;
@override final  int requiredExperience;
@override final  bool hasXpBuff;

/// Create a copy of BattlePassExperience
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattlePassExperienceCopyWith<_BattlePassExperience> get copyWith => __$BattlePassExperienceCopyWithImpl<_BattlePassExperience>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattlePassExperience&&(identical(other.level, level) || other.level == level)&&(identical(other.currentExperience, currentExperience) || other.currentExperience == currentExperience)&&(identical(other.requiredExperience, requiredExperience) || other.requiredExperience == requiredExperience)&&(identical(other.hasXpBuff, hasXpBuff) || other.hasXpBuff == hasXpBuff));
}


@override
int get hashCode => Object.hash(runtimeType,level,currentExperience,requiredExperience,hasXpBuff);

@override
String toString() {
  return 'BattlePassExperience(level: $level, currentExperience: $currentExperience, requiredExperience: $requiredExperience, hasXpBuff: $hasXpBuff)';
}


}

/// @nodoc
abstract mixin class _$BattlePassExperienceCopyWith<$Res> implements $BattlePassExperienceCopyWith<$Res> {
  factory _$BattlePassExperienceCopyWith(_BattlePassExperience value, $Res Function(_BattlePassExperience) _then) = __$BattlePassExperienceCopyWithImpl;
@override @useResult
$Res call({
 int level, int currentExperience, int requiredExperience, bool hasXpBuff
});




}
/// @nodoc
class __$BattlePassExperienceCopyWithImpl<$Res>
    implements _$BattlePassExperienceCopyWith<$Res> {
  __$BattlePassExperienceCopyWithImpl(this._self, this._then);

  final _BattlePassExperience _self;
  final $Res Function(_BattlePassExperience) _then;

/// Create a copy of BattlePassExperience
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? currentExperience = null,Object? requiredExperience = null,Object? hasXpBuff = null,}) {
  return _then(_BattlePassExperience(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,currentExperience: null == currentExperience ? _self.currentExperience : currentExperience // ignore: cast_nullable_to_non_nullable
as int,requiredExperience: null == requiredExperience ? _self.requiredExperience : requiredExperience // ignore: cast_nullable_to_non_nullable
as int,hasXpBuff: null == hasXpBuff ? _self.hasXpBuff : hasXpBuff // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
