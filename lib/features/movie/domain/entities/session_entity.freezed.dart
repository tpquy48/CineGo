// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionEntity {

 String get showtimeId; int get movieId; String get cinemaId; String get time; String get format; Map<String, String> get prices;
/// Create a copy of SessionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionEntityCopyWith<SessionEntity> get copyWith => _$SessionEntityCopyWithImpl<SessionEntity>(this as SessionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionEntity&&(identical(other.showtimeId, showtimeId) || other.showtimeId == showtimeId)&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.cinemaId, cinemaId) || other.cinemaId == cinemaId)&&(identical(other.time, time) || other.time == time)&&(identical(other.format, format) || other.format == format)&&const DeepCollectionEquality().equals(other.prices, prices));
}


@override
int get hashCode => Object.hash(runtimeType,showtimeId,movieId,cinemaId,time,format,const DeepCollectionEquality().hash(prices));

@override
String toString() {
  return 'SessionEntity(showtimeId: $showtimeId, movieId: $movieId, cinemaId: $cinemaId, time: $time, format: $format, prices: $prices)';
}


}

/// @nodoc
abstract mixin class $SessionEntityCopyWith<$Res>  {
  factory $SessionEntityCopyWith(SessionEntity value, $Res Function(SessionEntity) _then) = _$SessionEntityCopyWithImpl;
@useResult
$Res call({
 String showtimeId, int movieId, String cinemaId, String time, String format, Map<String, String> prices
});




}
/// @nodoc
class _$SessionEntityCopyWithImpl<$Res>
    implements $SessionEntityCopyWith<$Res> {
  _$SessionEntityCopyWithImpl(this._self, this._then);

  final SessionEntity _self;
  final $Res Function(SessionEntity) _then;

/// Create a copy of SessionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showtimeId = null,Object? movieId = null,Object? cinemaId = null,Object? time = null,Object? format = null,Object? prices = null,}) {
  return _then(_self.copyWith(
showtimeId: null == showtimeId ? _self.showtimeId : showtimeId // ignore: cast_nullable_to_non_nullable
as String,movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,cinemaId: null == cinemaId ? _self.cinemaId : cinemaId // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,prices: null == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionEntity].
extension SessionEntityPatterns on SessionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionEntity value)  $default,){
final _that = this;
switch (_that) {
case _SessionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SessionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String showtimeId,  int movieId,  String cinemaId,  String time,  String format,  Map<String, String> prices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionEntity() when $default != null:
return $default(_that.showtimeId,_that.movieId,_that.cinemaId,_that.time,_that.format,_that.prices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String showtimeId,  int movieId,  String cinemaId,  String time,  String format,  Map<String, String> prices)  $default,) {final _that = this;
switch (_that) {
case _SessionEntity():
return $default(_that.showtimeId,_that.movieId,_that.cinemaId,_that.time,_that.format,_that.prices);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String showtimeId,  int movieId,  String cinemaId,  String time,  String format,  Map<String, String> prices)?  $default,) {final _that = this;
switch (_that) {
case _SessionEntity() when $default != null:
return $default(_that.showtimeId,_that.movieId,_that.cinemaId,_that.time,_that.format,_that.prices);case _:
  return null;

}
}

}

/// @nodoc


class _SessionEntity implements SessionEntity {
  const _SessionEntity({required this.showtimeId, required this.movieId, required this.cinemaId, required this.time, required this.format, required final  Map<String, String> prices}): _prices = prices;
  

@override final  String showtimeId;
@override final  int movieId;
@override final  String cinemaId;
@override final  String time;
@override final  String format;
 final  Map<String, String> _prices;
@override Map<String, String> get prices {
  if (_prices is EqualUnmodifiableMapView) return _prices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_prices);
}


/// Create a copy of SessionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionEntityCopyWith<_SessionEntity> get copyWith => __$SessionEntityCopyWithImpl<_SessionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionEntity&&(identical(other.showtimeId, showtimeId) || other.showtimeId == showtimeId)&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.cinemaId, cinemaId) || other.cinemaId == cinemaId)&&(identical(other.time, time) || other.time == time)&&(identical(other.format, format) || other.format == format)&&const DeepCollectionEquality().equals(other._prices, _prices));
}


@override
int get hashCode => Object.hash(runtimeType,showtimeId,movieId,cinemaId,time,format,const DeepCollectionEquality().hash(_prices));

@override
String toString() {
  return 'SessionEntity(showtimeId: $showtimeId, movieId: $movieId, cinemaId: $cinemaId, time: $time, format: $format, prices: $prices)';
}


}

/// @nodoc
abstract mixin class _$SessionEntityCopyWith<$Res> implements $SessionEntityCopyWith<$Res> {
  factory _$SessionEntityCopyWith(_SessionEntity value, $Res Function(_SessionEntity) _then) = __$SessionEntityCopyWithImpl;
@override @useResult
$Res call({
 String showtimeId, int movieId, String cinemaId, String time, String format, Map<String, String> prices
});




}
/// @nodoc
class __$SessionEntityCopyWithImpl<$Res>
    implements _$SessionEntityCopyWith<$Res> {
  __$SessionEntityCopyWithImpl(this._self, this._then);

  final _SessionEntity _self;
  final $Res Function(_SessionEntity) _then;

/// Create a copy of SessionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showtimeId = null,Object? movieId = null,Object? cinemaId = null,Object? time = null,Object? format = null,Object? prices = null,}) {
  return _then(_SessionEntity(
showtimeId: null == showtimeId ? _self.showtimeId : showtimeId // ignore: cast_nullable_to_non_nullable
as String,movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,cinemaId: null == cinemaId ? _self.cinemaId : cinemaId // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,prices: null == prices ? _self._prices : prices // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
