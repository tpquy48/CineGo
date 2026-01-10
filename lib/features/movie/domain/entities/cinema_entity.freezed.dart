// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cinema_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CinemaEntity {

 String get name; String get address; String get distance; List<SessionEntity> get sessions;
/// Create a copy of CinemaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CinemaEntityCopyWith<CinemaEntity> get copyWith => _$CinemaEntityCopyWithImpl<CinemaEntity>(this as CinemaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CinemaEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.distance, distance) || other.distance == distance)&&const DeepCollectionEquality().equals(other.sessions, sessions));
}


@override
int get hashCode => Object.hash(runtimeType,name,address,distance,const DeepCollectionEquality().hash(sessions));

@override
String toString() {
  return 'CinemaEntity(name: $name, address: $address, distance: $distance, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $CinemaEntityCopyWith<$Res>  {
  factory $CinemaEntityCopyWith(CinemaEntity value, $Res Function(CinemaEntity) _then) = _$CinemaEntityCopyWithImpl;
@useResult
$Res call({
 String name, String address, String distance, List<SessionEntity> sessions
});




}
/// @nodoc
class _$CinemaEntityCopyWithImpl<$Res>
    implements $CinemaEntityCopyWith<$Res> {
  _$CinemaEntityCopyWithImpl(this._self, this._then);

  final CinemaEntity _self;
  final $Res Function(CinemaEntity) _then;

/// Create a copy of CinemaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? address = null,Object? distance = null,Object? sessions = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,sessions: null == sessions ? _self.sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<SessionEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [CinemaEntity].
extension CinemaEntityPatterns on CinemaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CinemaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CinemaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CinemaEntity value)  $default,){
final _that = this;
switch (_that) {
case _CinemaEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CinemaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CinemaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String address,  String distance,  List<SessionEntity> sessions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CinemaEntity() when $default != null:
return $default(_that.name,_that.address,_that.distance,_that.sessions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String address,  String distance,  List<SessionEntity> sessions)  $default,) {final _that = this;
switch (_that) {
case _CinemaEntity():
return $default(_that.name,_that.address,_that.distance,_that.sessions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String address,  String distance,  List<SessionEntity> sessions)?  $default,) {final _that = this;
switch (_that) {
case _CinemaEntity() when $default != null:
return $default(_that.name,_that.address,_that.distance,_that.sessions);case _:
  return null;

}
}

}

/// @nodoc


class _CinemaEntity implements CinemaEntity {
  const _CinemaEntity({required this.name, required this.address, required this.distance, required final  List<SessionEntity> sessions}): _sessions = sessions;
  

@override final  String name;
@override final  String address;
@override final  String distance;
 final  List<SessionEntity> _sessions;
@override List<SessionEntity> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}


/// Create a copy of CinemaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CinemaEntityCopyWith<_CinemaEntity> get copyWith => __$CinemaEntityCopyWithImpl<_CinemaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CinemaEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.distance, distance) || other.distance == distance)&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,name,address,distance,const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'CinemaEntity(name: $name, address: $address, distance: $distance, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class _$CinemaEntityCopyWith<$Res> implements $CinemaEntityCopyWith<$Res> {
  factory _$CinemaEntityCopyWith(_CinemaEntity value, $Res Function(_CinemaEntity) _then) = __$CinemaEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String address, String distance, List<SessionEntity> sessions
});




}
/// @nodoc
class __$CinemaEntityCopyWithImpl<$Res>
    implements _$CinemaEntityCopyWith<$Res> {
  __$CinemaEntityCopyWithImpl(this._self, this._then);

  final _CinemaEntity _self;
  final $Res Function(_CinemaEntity) _then;

/// Create a copy of CinemaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? address = null,Object? distance = null,Object? sessions = null,}) {
  return _then(_CinemaEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as String,sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<SessionEntity>,
  ));
}


}

// dart format on
