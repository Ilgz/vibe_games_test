// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_pass_season.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattlePassSeason {

 String get id; String get title; DateTime get startsAt; DateTime get endsAt; List<BattlePassLevel> get levels; List<BattlePassTask> get tasks;
/// Create a copy of BattlePassSeason
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattlePassSeasonCopyWith<BattlePassSeason> get copyWith => _$BattlePassSeasonCopyWithImpl<BattlePassSeason>(this as BattlePassSeason, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattlePassSeason&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&const DeepCollectionEquality().equals(other.levels, levels)&&const DeepCollectionEquality().equals(other.tasks, tasks));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,startsAt,endsAt,const DeepCollectionEquality().hash(levels),const DeepCollectionEquality().hash(tasks));

@override
String toString() {
  return 'BattlePassSeason(id: $id, title: $title, startsAt: $startsAt, endsAt: $endsAt, levels: $levels, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class $BattlePassSeasonCopyWith<$Res>  {
  factory $BattlePassSeasonCopyWith(BattlePassSeason value, $Res Function(BattlePassSeason) _then) = _$BattlePassSeasonCopyWithImpl;
@useResult
$Res call({
 String id, String title, DateTime startsAt, DateTime endsAt, List<BattlePassLevel> levels, List<BattlePassTask> tasks
});




}
/// @nodoc
class _$BattlePassSeasonCopyWithImpl<$Res>
    implements $BattlePassSeasonCopyWith<$Res> {
  _$BattlePassSeasonCopyWithImpl(this._self, this._then);

  final BattlePassSeason _self;
  final $Res Function(BattlePassSeason) _then;

/// Create a copy of BattlePassSeason
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? startsAt = null,Object? endsAt = null,Object? levels = null,Object? tasks = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,levels: null == levels ? _self.levels : levels // ignore: cast_nullable_to_non_nullable
as List<BattlePassLevel>,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<BattlePassTask>,
  ));
}

}


/// Adds pattern-matching-related methods to [BattlePassSeason].
extension BattlePassSeasonPatterns on BattlePassSeason {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattlePassSeason value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattlePassSeason() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattlePassSeason value)  $default,){
final _that = this;
switch (_that) {
case _BattlePassSeason():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattlePassSeason value)?  $default,){
final _that = this;
switch (_that) {
case _BattlePassSeason() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  DateTime startsAt,  DateTime endsAt,  List<BattlePassLevel> levels,  List<BattlePassTask> tasks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattlePassSeason() when $default != null:
return $default(_that.id,_that.title,_that.startsAt,_that.endsAt,_that.levels,_that.tasks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  DateTime startsAt,  DateTime endsAt,  List<BattlePassLevel> levels,  List<BattlePassTask> tasks)  $default,) {final _that = this;
switch (_that) {
case _BattlePassSeason():
return $default(_that.id,_that.title,_that.startsAt,_that.endsAt,_that.levels,_that.tasks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  DateTime startsAt,  DateTime endsAt,  List<BattlePassLevel> levels,  List<BattlePassTask> tasks)?  $default,) {final _that = this;
switch (_that) {
case _BattlePassSeason() when $default != null:
return $default(_that.id,_that.title,_that.startsAt,_that.endsAt,_that.levels,_that.tasks);case _:
  return null;

}
}

}

/// @nodoc


class _BattlePassSeason implements BattlePassSeason {
  const _BattlePassSeason({required this.id, required this.title, required this.startsAt, required this.endsAt, required final  List<BattlePassLevel> levels, required final  List<BattlePassTask> tasks}): _levels = levels,_tasks = tasks;
  

@override final  String id;
@override final  String title;
@override final  DateTime startsAt;
@override final  DateTime endsAt;
 final  List<BattlePassLevel> _levels;
@override List<BattlePassLevel> get levels {
  if (_levels is EqualUnmodifiableListView) return _levels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_levels);
}

 final  List<BattlePassTask> _tasks;
@override List<BattlePassTask> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of BattlePassSeason
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattlePassSeasonCopyWith<_BattlePassSeason> get copyWith => __$BattlePassSeasonCopyWithImpl<_BattlePassSeason>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattlePassSeason&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&const DeepCollectionEquality().equals(other._levels, _levels)&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,startsAt,endsAt,const DeepCollectionEquality().hash(_levels),const DeepCollectionEquality().hash(_tasks));

@override
String toString() {
  return 'BattlePassSeason(id: $id, title: $title, startsAt: $startsAt, endsAt: $endsAt, levels: $levels, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class _$BattlePassSeasonCopyWith<$Res> implements $BattlePassSeasonCopyWith<$Res> {
  factory _$BattlePassSeasonCopyWith(_BattlePassSeason value, $Res Function(_BattlePassSeason) _then) = __$BattlePassSeasonCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, DateTime startsAt, DateTime endsAt, List<BattlePassLevel> levels, List<BattlePassTask> tasks
});




}
/// @nodoc
class __$BattlePassSeasonCopyWithImpl<$Res>
    implements _$BattlePassSeasonCopyWith<$Res> {
  __$BattlePassSeasonCopyWithImpl(this._self, this._then);

  final _BattlePassSeason _self;
  final $Res Function(_BattlePassSeason) _then;

/// Create a copy of BattlePassSeason
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? startsAt = null,Object? endsAt = null,Object? levels = null,Object? tasks = null,}) {
  return _then(_BattlePassSeason(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,levels: null == levels ? _self._levels : levels // ignore: cast_nullable_to_non_nullable
as List<BattlePassLevel>,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<BattlePassTask>,
  ));
}


}

// dart format on
