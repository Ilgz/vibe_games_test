// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_pass_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattlePassState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattlePassState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BattlePassState()';
}


}

/// @nodoc
class $BattlePassStateCopyWith<$Res>  {
$BattlePassStateCopyWith(BattlePassState _, $Res Function(BattlePassState) __);
}


/// Adds pattern-matching-related methods to [BattlePassState].
extension BattlePassStatePatterns on BattlePassState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Failure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( BattlePassSnapshot snapshot,  BattlePassDemoScenario scenario,  List<BattlePassRewardTrackItem> rewardTrackItems)?  loaded,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.snapshot,_that.scenario,_that.rewardTrackItems);case _Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( BattlePassSnapshot snapshot,  BattlePassDemoScenario scenario,  List<BattlePassRewardTrackItem> rewardTrackItems)  loaded,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.snapshot,_that.scenario,_that.rewardTrackItems);case _Failure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( BattlePassSnapshot snapshot,  BattlePassDemoScenario scenario,  List<BattlePassRewardTrackItem> rewardTrackItems)?  loaded,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.snapshot,_that.scenario,_that.rewardTrackItems);case _Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements BattlePassState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BattlePassState.initial()';
}


}




/// @nodoc


class _Loading implements BattlePassState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BattlePassState.loading()';
}


}




/// @nodoc


class _Loaded implements BattlePassState {
  const _Loaded({required this.snapshot, required this.scenario, required final  List<BattlePassRewardTrackItem> rewardTrackItems}): _rewardTrackItems = rewardTrackItems;
  

 final  BattlePassSnapshot snapshot;
 final  BattlePassDemoScenario scenario;
 final  List<BattlePassRewardTrackItem> _rewardTrackItems;
 List<BattlePassRewardTrackItem> get rewardTrackItems {
  if (_rewardTrackItems is EqualUnmodifiableListView) return _rewardTrackItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rewardTrackItems);
}


/// Create a copy of BattlePassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.snapshot, snapshot) || other.snapshot == snapshot)&&(identical(other.scenario, scenario) || other.scenario == scenario)&&const DeepCollectionEquality().equals(other._rewardTrackItems, _rewardTrackItems));
}


@override
int get hashCode => Object.hash(runtimeType,snapshot,scenario,const DeepCollectionEquality().hash(_rewardTrackItems));

@override
String toString() {
  return 'BattlePassState.loaded(snapshot: $snapshot, scenario: $scenario, rewardTrackItems: $rewardTrackItems)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $BattlePassStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 BattlePassSnapshot snapshot, BattlePassDemoScenario scenario, List<BattlePassRewardTrackItem> rewardTrackItems
});


$BattlePassSnapshotCopyWith<$Res> get snapshot;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of BattlePassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? snapshot = null,Object? scenario = null,Object? rewardTrackItems = null,}) {
  return _then(_Loaded(
snapshot: null == snapshot ? _self.snapshot : snapshot // ignore: cast_nullable_to_non_nullable
as BattlePassSnapshot,scenario: null == scenario ? _self.scenario : scenario // ignore: cast_nullable_to_non_nullable
as BattlePassDemoScenario,rewardTrackItems: null == rewardTrackItems ? _self._rewardTrackItems : rewardTrackItems // ignore: cast_nullable_to_non_nullable
as List<BattlePassRewardTrackItem>,
  ));
}

/// Create a copy of BattlePassState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattlePassSnapshotCopyWith<$Res> get snapshot {
  
  return $BattlePassSnapshotCopyWith<$Res>(_self.snapshot, (value) {
    return _then(_self.copyWith(snapshot: value));
  });
}
}

/// @nodoc


class _Failure implements BattlePassState {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of BattlePassState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BattlePassState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $BattlePassStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of BattlePassState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
