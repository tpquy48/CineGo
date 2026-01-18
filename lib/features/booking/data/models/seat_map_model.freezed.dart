// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_map_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeatMapModel {

 String get showtimeId; int get rows; int get cols; List<SeatModel> get seats;
/// Create a copy of SeatMapModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeatMapModelCopyWith<SeatMapModel> get copyWith => _$SeatMapModelCopyWithImpl<SeatMapModel>(this as SeatMapModel, _$identity);

  /// Serializes this SeatMapModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeatMapModel&&(identical(other.showtimeId, showtimeId) || other.showtimeId == showtimeId)&&(identical(other.rows, rows) || other.rows == rows)&&(identical(other.cols, cols) || other.cols == cols)&&const DeepCollectionEquality().equals(other.seats, seats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,showtimeId,rows,cols,const DeepCollectionEquality().hash(seats));

@override
String toString() {
  return 'SeatMapModel(showtimeId: $showtimeId, rows: $rows, cols: $cols, seats: $seats)';
}


}

/// @nodoc
abstract mixin class $SeatMapModelCopyWith<$Res>  {
  factory $SeatMapModelCopyWith(SeatMapModel value, $Res Function(SeatMapModel) _then) = _$SeatMapModelCopyWithImpl;
@useResult
$Res call({
 String showtimeId, int rows, int cols, List<SeatModel> seats
});




}
/// @nodoc
class _$SeatMapModelCopyWithImpl<$Res>
    implements $SeatMapModelCopyWith<$Res> {
  _$SeatMapModelCopyWithImpl(this._self, this._then);

  final SeatMapModel _self;
  final $Res Function(SeatMapModel) _then;

/// Create a copy of SeatMapModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? showtimeId = null,Object? rows = null,Object? cols = null,Object? seats = null,}) {
  return _then(_self.copyWith(
showtimeId: null == showtimeId ? _self.showtimeId : showtimeId // ignore: cast_nullable_to_non_nullable
as String,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as int,cols: null == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as int,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as List<SeatModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SeatMapModel].
extension SeatMapModelPatterns on SeatMapModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeatMapModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeatMapModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeatMapModel value)  $default,){
final _that = this;
switch (_that) {
case _SeatMapModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeatMapModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeatMapModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String showtimeId,  int rows,  int cols,  List<SeatModel> seats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeatMapModel() when $default != null:
return $default(_that.showtimeId,_that.rows,_that.cols,_that.seats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String showtimeId,  int rows,  int cols,  List<SeatModel> seats)  $default,) {final _that = this;
switch (_that) {
case _SeatMapModel():
return $default(_that.showtimeId,_that.rows,_that.cols,_that.seats);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String showtimeId,  int rows,  int cols,  List<SeatModel> seats)?  $default,) {final _that = this;
switch (_that) {
case _SeatMapModel() when $default != null:
return $default(_that.showtimeId,_that.rows,_that.cols,_that.seats);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeatMapModel implements SeatMapModel {
  const _SeatMapModel({required this.showtimeId, required this.rows, required this.cols, required final  List<SeatModel> seats}): _seats = seats;
  factory _SeatMapModel.fromJson(Map<String, dynamic> json) => _$SeatMapModelFromJson(json);

@override final  String showtimeId;
@override final  int rows;
@override final  int cols;
 final  List<SeatModel> _seats;
@override List<SeatModel> get seats {
  if (_seats is EqualUnmodifiableListView) return _seats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seats);
}


/// Create a copy of SeatMapModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeatMapModelCopyWith<_SeatMapModel> get copyWith => __$SeatMapModelCopyWithImpl<_SeatMapModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeatMapModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeatMapModel&&(identical(other.showtimeId, showtimeId) || other.showtimeId == showtimeId)&&(identical(other.rows, rows) || other.rows == rows)&&(identical(other.cols, cols) || other.cols == cols)&&const DeepCollectionEquality().equals(other._seats, _seats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,showtimeId,rows,cols,const DeepCollectionEquality().hash(_seats));

@override
String toString() {
  return 'SeatMapModel(showtimeId: $showtimeId, rows: $rows, cols: $cols, seats: $seats)';
}


}

/// @nodoc
abstract mixin class _$SeatMapModelCopyWith<$Res> implements $SeatMapModelCopyWith<$Res> {
  factory _$SeatMapModelCopyWith(_SeatMapModel value, $Res Function(_SeatMapModel) _then) = __$SeatMapModelCopyWithImpl;
@override @useResult
$Res call({
 String showtimeId, int rows, int cols, List<SeatModel> seats
});




}
/// @nodoc
class __$SeatMapModelCopyWithImpl<$Res>
    implements _$SeatMapModelCopyWith<$Res> {
  __$SeatMapModelCopyWithImpl(this._self, this._then);

  final _SeatMapModel _self;
  final $Res Function(_SeatMapModel) _then;

/// Create a copy of SeatMapModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? showtimeId = null,Object? rows = null,Object? cols = null,Object? seats = null,}) {
  return _then(_SeatMapModel(
showtimeId: null == showtimeId ? _self.showtimeId : showtimeId // ignore: cast_nullable_to_non_nullable
as String,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as int,cols: null == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as int,seats: null == seats ? _self._seats : seats // ignore: cast_nullable_to_non_nullable
as List<SeatModel>,
  ));
}


}

// dart format on
