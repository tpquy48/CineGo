// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailEntity {

 int get id; String get title; String get originalTitle; bool get adult; String get overview; List<GenreEntity> get genres; bool get video; int get budget; double get popularity; String get status; double get voteAverage; int get voteCount; int get runtime; String? get backdropPath; String? get posterPath; String? get releaseDate;
/// Create a copy of MovieDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailEntityCopyWith<MovieDetailEntity> get copyWith => _$MovieDetailEntityCopyWithImpl<MovieDetailEntity>(this as MovieDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.overview, overview) || other.overview == overview)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.video, video) || other.video == video)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.status, status) || other.status == status)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,originalTitle,adult,overview,const DeepCollectionEquality().hash(genres),video,budget,popularity,status,voteAverage,voteCount,runtime,backdropPath,posterPath,releaseDate);

@override
String toString() {
  return 'MovieDetailEntity(id: $id, title: $title, originalTitle: $originalTitle, adult: $adult, overview: $overview, genres: $genres, video: $video, budget: $budget, popularity: $popularity, status: $status, voteAverage: $voteAverage, voteCount: $voteCount, runtime: $runtime, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class $MovieDetailEntityCopyWith<$Res>  {
  factory $MovieDetailEntityCopyWith(MovieDetailEntity value, $Res Function(MovieDetailEntity) _then) = _$MovieDetailEntityCopyWithImpl;
@useResult
$Res call({
 int id, String title, String originalTitle, bool adult, String overview, List<GenreEntity> genres, bool video, int budget, double popularity, String status, double voteAverage, int voteCount, int runtime, String? backdropPath, String? posterPath, String? releaseDate
});




}
/// @nodoc
class _$MovieDetailEntityCopyWithImpl<$Res>
    implements $MovieDetailEntityCopyWith<$Res> {
  _$MovieDetailEntityCopyWithImpl(this._self, this._then);

  final MovieDetailEntity _self;
  final $Res Function(MovieDetailEntity) _then;

/// Create a copy of MovieDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? originalTitle = null,Object? adult = null,Object? overview = null,Object? genres = null,Object? video = null,Object? budget = null,Object? popularity = null,Object? status = null,Object? voteAverage = null,Object? voteCount = null,Object? runtime = null,Object? backdropPath = freezed,Object? posterPath = freezed,Object? releaseDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreEntity>,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailEntity].
extension MovieDetailEntityPatterns on MovieDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String originalTitle,  bool adult,  String overview,  List<GenreEntity> genres,  bool video,  int budget,  double popularity,  String status,  double voteAverage,  int voteCount,  int runtime,  String? backdropPath,  String? posterPath,  String? releaseDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailEntity() when $default != null:
return $default(_that.id,_that.title,_that.originalTitle,_that.adult,_that.overview,_that.genres,_that.video,_that.budget,_that.popularity,_that.status,_that.voteAverage,_that.voteCount,_that.runtime,_that.backdropPath,_that.posterPath,_that.releaseDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String originalTitle,  bool adult,  String overview,  List<GenreEntity> genres,  bool video,  int budget,  double popularity,  String status,  double voteAverage,  int voteCount,  int runtime,  String? backdropPath,  String? posterPath,  String? releaseDate)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailEntity():
return $default(_that.id,_that.title,_that.originalTitle,_that.adult,_that.overview,_that.genres,_that.video,_that.budget,_that.popularity,_that.status,_that.voteAverage,_that.voteCount,_that.runtime,_that.backdropPath,_that.posterPath,_that.releaseDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String originalTitle,  bool adult,  String overview,  List<GenreEntity> genres,  bool video,  int budget,  double popularity,  String status,  double voteAverage,  int voteCount,  int runtime,  String? backdropPath,  String? posterPath,  String? releaseDate)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailEntity() when $default != null:
return $default(_that.id,_that.title,_that.originalTitle,_that.adult,_that.overview,_that.genres,_that.video,_that.budget,_that.popularity,_that.status,_that.voteAverage,_that.voteCount,_that.runtime,_that.backdropPath,_that.posterPath,_that.releaseDate);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetailEntity implements MovieDetailEntity {
  const _MovieDetailEntity({required this.id, required this.title, required this.originalTitle, required this.adult, required this.overview, required final  List<GenreEntity> genres, required this.video, required this.budget, required this.popularity, required this.status, required this.voteAverage, required this.voteCount, required this.runtime, this.backdropPath, this.posterPath, this.releaseDate}): _genres = genres;
  

@override final  int id;
@override final  String title;
@override final  String originalTitle;
@override final  bool adult;
@override final  String overview;
 final  List<GenreEntity> _genres;
@override List<GenreEntity> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override final  bool video;
@override final  int budget;
@override final  double popularity;
@override final  String status;
@override final  double voteAverage;
@override final  int voteCount;
@override final  int runtime;
@override final  String? backdropPath;
@override final  String? posterPath;
@override final  String? releaseDate;

/// Create a copy of MovieDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailEntityCopyWith<_MovieDetailEntity> get copyWith => __$MovieDetailEntityCopyWithImpl<_MovieDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.overview, overview) || other.overview == overview)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.video, video) || other.video == video)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.status, status) || other.status == status)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,originalTitle,adult,overview,const DeepCollectionEquality().hash(_genres),video,budget,popularity,status,voteAverage,voteCount,runtime,backdropPath,posterPath,releaseDate);

@override
String toString() {
  return 'MovieDetailEntity(id: $id, title: $title, originalTitle: $originalTitle, adult: $adult, overview: $overview, genres: $genres, video: $video, budget: $budget, popularity: $popularity, status: $status, voteAverage: $voteAverage, voteCount: $voteCount, runtime: $runtime, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailEntityCopyWith<$Res> implements $MovieDetailEntityCopyWith<$Res> {
  factory _$MovieDetailEntityCopyWith(_MovieDetailEntity value, $Res Function(_MovieDetailEntity) _then) = __$MovieDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String originalTitle, bool adult, String overview, List<GenreEntity> genres, bool video, int budget, double popularity, String status, double voteAverage, int voteCount, int runtime, String? backdropPath, String? posterPath, String? releaseDate
});




}
/// @nodoc
class __$MovieDetailEntityCopyWithImpl<$Res>
    implements _$MovieDetailEntityCopyWith<$Res> {
  __$MovieDetailEntityCopyWithImpl(this._self, this._then);

  final _MovieDetailEntity _self;
  final $Res Function(_MovieDetailEntity) _then;

/// Create a copy of MovieDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? originalTitle = null,Object? adult = null,Object? overview = null,Object? genres = null,Object? video = null,Object? budget = null,Object? popularity = null,Object? status = null,Object? voteAverage = null,Object? voteCount = null,Object? runtime = null,Object? backdropPath = freezed,Object? posterPath = freezed,Object? releaseDate = freezed,}) {
  return _then(_MovieDetailEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreEntity>,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
