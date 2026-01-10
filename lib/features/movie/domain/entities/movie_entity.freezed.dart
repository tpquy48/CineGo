// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieEntity {

 int get id; String get title; String get overview; List<int> get genreIds; List<String> get genreNames; String get posterPath; double get voteAverage; String get releaseDate;
/// Create a copy of MovieEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieEntityCopyWith<MovieEntity> get copyWith => _$MovieEntityCopyWithImpl<MovieEntity>(this as MovieEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.overview, overview) || other.overview == overview)&&const DeepCollectionEquality().equals(other.genreIds, genreIds)&&const DeepCollectionEquality().equals(other.genreNames, genreNames)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,overview,const DeepCollectionEquality().hash(genreIds),const DeepCollectionEquality().hash(genreNames),posterPath,voteAverage,releaseDate);

@override
String toString() {
  return 'MovieEntity(id: $id, title: $title, overview: $overview, genreIds: $genreIds, genreNames: $genreNames, posterPath: $posterPath, voteAverage: $voteAverage, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class $MovieEntityCopyWith<$Res>  {
  factory $MovieEntityCopyWith(MovieEntity value, $Res Function(MovieEntity) _then) = _$MovieEntityCopyWithImpl;
@useResult
$Res call({
 int id, String title, String overview, List<int> genreIds, List<String> genreNames, String posterPath, double voteAverage, String releaseDate
});




}
/// @nodoc
class _$MovieEntityCopyWithImpl<$Res>
    implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._self, this._then);

  final MovieEntity _self;
  final $Res Function(MovieEntity) _then;

/// Create a copy of MovieEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? overview = null,Object? genreIds = null,Object? genreNames = null,Object? posterPath = null,Object? voteAverage = null,Object? releaseDate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,genreNames: null == genreNames ? _self.genreNames : genreNames // ignore: cast_nullable_to_non_nullable
as List<String>,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieEntity].
extension MovieEntityPatterns on MovieEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieEntity value)  $default,){
final _that = this;
switch (_that) {
case _MovieEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MovieEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String overview,  List<int> genreIds,  List<String> genreNames,  String posterPath,  double voteAverage,  String releaseDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieEntity() when $default != null:
return $default(_that.id,_that.title,_that.overview,_that.genreIds,_that.genreNames,_that.posterPath,_that.voteAverage,_that.releaseDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String overview,  List<int> genreIds,  List<String> genreNames,  String posterPath,  double voteAverage,  String releaseDate)  $default,) {final _that = this;
switch (_that) {
case _MovieEntity():
return $default(_that.id,_that.title,_that.overview,_that.genreIds,_that.genreNames,_that.posterPath,_that.voteAverage,_that.releaseDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String overview,  List<int> genreIds,  List<String> genreNames,  String posterPath,  double voteAverage,  String releaseDate)?  $default,) {final _that = this;
switch (_that) {
case _MovieEntity() when $default != null:
return $default(_that.id,_that.title,_that.overview,_that.genreIds,_that.genreNames,_that.posterPath,_that.voteAverage,_that.releaseDate);case _:
  return null;

}
}

}

/// @nodoc


class _MovieEntity implements MovieEntity {
  const _MovieEntity({required this.id, required this.title, required this.overview, required final  List<int> genreIds, required final  List<String> genreNames, required this.posterPath, required this.voteAverage, required this.releaseDate}): _genreIds = genreIds,_genreNames = genreNames;
  

@override final  int id;
@override final  String title;
@override final  String overview;
 final  List<int> _genreIds;
@override List<int> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}

 final  List<String> _genreNames;
@override List<String> get genreNames {
  if (_genreNames is EqualUnmodifiableListView) return _genreNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreNames);
}

@override final  String posterPath;
@override final  double voteAverage;
@override final  String releaseDate;

/// Create a copy of MovieEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieEntityCopyWith<_MovieEntity> get copyWith => __$MovieEntityCopyWithImpl<_MovieEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.overview, overview) || other.overview == overview)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds)&&const DeepCollectionEquality().equals(other._genreNames, _genreNames)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,overview,const DeepCollectionEquality().hash(_genreIds),const DeepCollectionEquality().hash(_genreNames),posterPath,voteAverage,releaseDate);

@override
String toString() {
  return 'MovieEntity(id: $id, title: $title, overview: $overview, genreIds: $genreIds, genreNames: $genreNames, posterPath: $posterPath, voteAverage: $voteAverage, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class _$MovieEntityCopyWith<$Res> implements $MovieEntityCopyWith<$Res> {
  factory _$MovieEntityCopyWith(_MovieEntity value, $Res Function(_MovieEntity) _then) = __$MovieEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String overview, List<int> genreIds, List<String> genreNames, String posterPath, double voteAverage, String releaseDate
});




}
/// @nodoc
class __$MovieEntityCopyWithImpl<$Res>
    implements _$MovieEntityCopyWith<$Res> {
  __$MovieEntityCopyWithImpl(this._self, this._then);

  final _MovieEntity _self;
  final $Res Function(_MovieEntity) _then;

/// Create a copy of MovieEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? overview = null,Object? genreIds = null,Object? genreNames = null,Object? posterPath = null,Object? voteAverage = null,Object? releaseDate = null,}) {
  return _then(_MovieEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,genreNames: null == genreNames ? _self._genreNames : genreNames // ignore: cast_nullable_to_non_nullable
as List<String>,posterPath: null == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,releaseDate: null == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
