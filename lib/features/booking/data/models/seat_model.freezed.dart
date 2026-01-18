// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeatModel {

 String get id; String get row; int get number; int get price;
/// Create a copy of SeatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeatModelCopyWith<SeatModel> get copyWith => _$SeatModelCopyWithImpl<SeatModel>(this as SeatModel, _$identity);

  /// Serializes this SeatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.row, row) || other.row == row)&&(identical(other.number, number) || other.number == number)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,row,number,price);

@override
String toString() {
  return 'SeatModel(id: $id, row: $row, number: $number, price: $price)';
}


}

/// @nodoc
abstract mixin class $SeatModelCopyWith<$Res>  {
  factory $SeatModelCopyWith(SeatModel value, $Res Function(SeatModel) _then) = _$SeatModelCopyWithImpl;
@useResult
$Res call({
 String id, String row, int number, int price
});




}
/// @nodoc
class _$SeatModelCopyWithImpl<$Res>
    implements $SeatModelCopyWith<$Res> {
  _$SeatModelCopyWithImpl(this._self, this._then);

  final SeatModel _self;
  final $Res Function(SeatModel) _then;

/// Create a copy of SeatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? row = null,Object? number = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SeatModel].
extension SeatModelPatterns on SeatModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeatModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeatModel value)  $default,){
final _that = this;
switch (_that) {
case _SeatModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeatModel value)?  $default,){
final _that = this;
switch (_that) {
case _SeatModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String row,  int number,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeatModel() when $default != null:
return $default(_that.id,_that.row,_that.number,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String row,  int number,  int price)  $default,) {final _that = this;
switch (_that) {
case _SeatModel():
return $default(_that.id,_that.row,_that.number,_that.price);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String row,  int number,  int price)?  $default,) {final _that = this;
switch (_that) {
case _SeatModel() when $default != null:
return $default(_that.id,_that.row,_that.number,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeatModel implements SeatModel {
  const _SeatModel({required this.id, required this.row, required this.number, required this.price});
  factory _SeatModel.fromJson(Map<String, dynamic> json) => _$SeatModelFromJson(json);

@override final  String id;
@override final  String row;
@override final  int number;
@override final  int price;

/// Create a copy of SeatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeatModelCopyWith<_SeatModel> get copyWith => __$SeatModelCopyWithImpl<_SeatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeatModel&&(identical(other.id, id) || other.id == id)&&(identical(other.row, row) || other.row == row)&&(identical(other.number, number) || other.number == number)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,row,number,price);

@override
String toString() {
  return 'SeatModel(id: $id, row: $row, number: $number, price: $price)';
}


}

/// @nodoc
abstract mixin class _$SeatModelCopyWith<$Res> implements $SeatModelCopyWith<$Res> {
  factory _$SeatModelCopyWith(_SeatModel value, $Res Function(_SeatModel) _then) = __$SeatModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String row, int number, int price
});




}
/// @nodoc
class __$SeatModelCopyWithImpl<$Res>
    implements _$SeatModelCopyWith<$Res> {
  __$SeatModelCopyWithImpl(this._self, this._then);

  final _SeatModel _self;
  final $Res Function(_SeatModel) _then;

/// Create a copy of SeatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? row = null,Object? number = null,Object? price = null,}) {
  return _then(_SeatModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,row: null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
