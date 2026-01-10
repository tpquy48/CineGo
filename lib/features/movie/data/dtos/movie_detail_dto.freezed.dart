// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetailDto {

 int get id; String get title; bool get adult; String get overview; List<GenreDto> get genres; bool get video; int get budget; double get popularity; String get status; int get runtime;@JsonKey(name: 'original_title') String get originalTitle;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'vote_count') int get voteCount;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'release_date') String? get releaseDate;
/// Create a copy of MovieDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailDtoCopyWith<MovieDetailDto> get copyWith => _$MovieDetailDtoCopyWithImpl<MovieDetailDto>(this as MovieDetailDto, _$identity);

  /// Serializes this MovieDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.overview, overview) || other.overview == overview)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.video, video) || other.video == video)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.status, status) || other.status == status)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,adult,overview,const DeepCollectionEquality().hash(genres),video,budget,popularity,status,runtime,originalTitle,voteAverage,voteCount,backdropPath,posterPath,releaseDate);

@override
String toString() {
  return 'MovieDetailDto(id: $id, title: $title, adult: $adult, overview: $overview, genres: $genres, video: $video, budget: $budget, popularity: $popularity, status: $status, runtime: $runtime, originalTitle: $originalTitle, voteAverage: $voteAverage, voteCount: $voteCount, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class $MovieDetailDtoCopyWith<$Res>  {
  factory $MovieDetailDtoCopyWith(MovieDetailDto value, $Res Function(MovieDetailDto) _then) = _$MovieDetailDtoCopyWithImpl;
@useResult
$Res call({
 int id, String title, bool adult, String overview, List<GenreDto> genres, bool video, int budget, double popularity, String status, int runtime,@JsonKey(name: 'original_title') String originalTitle,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'release_date') String? releaseDate
});




}
/// @nodoc
class _$MovieDetailDtoCopyWithImpl<$Res>
    implements $MovieDetailDtoCopyWith<$Res> {
  _$MovieDetailDtoCopyWithImpl(this._self, this._then);

  final MovieDetailDto _self;
  final $Res Function(MovieDetailDto) _then;

/// Create a copy of MovieDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? adult = null,Object? overview = null,Object? genres = null,Object? video = null,Object? budget = null,Object? popularity = null,Object? status = null,Object? runtime = null,Object? originalTitle = null,Object? voteAverage = null,Object? voteCount = null,Object? backdropPath = freezed,Object? posterPath = freezed,Object? releaseDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreDto>,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailDto].
extension MovieDetailDtoPatterns on MovieDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  bool adult,  String overview,  List<GenreDto> genres,  bool video,  int budget,  double popularity,  String status,  int runtime, @JsonKey(name: 'original_title')  String originalTitle, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'release_date')  String? releaseDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailDto() when $default != null:
return $default(_that.id,_that.title,_that.adult,_that.overview,_that.genres,_that.video,_that.budget,_that.popularity,_that.status,_that.runtime,_that.originalTitle,_that.voteAverage,_that.voteCount,_that.backdropPath,_that.posterPath,_that.releaseDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  bool adult,  String overview,  List<GenreDto> genres,  bool video,  int budget,  double popularity,  String status,  int runtime, @JsonKey(name: 'original_title')  String originalTitle, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'release_date')  String? releaseDate)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailDto():
return $default(_that.id,_that.title,_that.adult,_that.overview,_that.genres,_that.video,_that.budget,_that.popularity,_that.status,_that.runtime,_that.originalTitle,_that.voteAverage,_that.voteCount,_that.backdropPath,_that.posterPath,_that.releaseDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  bool adult,  String overview,  List<GenreDto> genres,  bool video,  int budget,  double popularity,  String status,  int runtime, @JsonKey(name: 'original_title')  String originalTitle, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'release_date')  String? releaseDate)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailDto() when $default != null:
return $default(_that.id,_that.title,_that.adult,_that.overview,_that.genres,_that.video,_that.budget,_that.popularity,_that.status,_that.runtime,_that.originalTitle,_that.voteAverage,_that.voteCount,_that.backdropPath,_that.posterPath,_that.releaseDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDetailDto implements MovieDetailDto {
  const _MovieDetailDto({required this.id, required this.title, required this.adult, required this.overview, required final  List<GenreDto> genres, required this.video, required this.budget, required this.popularity, required this.status, required this.runtime, @JsonKey(name: 'original_title') required this.originalTitle, @JsonKey(name: 'vote_average') required this.voteAverage, @JsonKey(name: 'vote_count') required this.voteCount, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'release_date') this.releaseDate}): _genres = genres;
  factory _MovieDetailDto.fromJson(Map<String, dynamic> json) => _$MovieDetailDtoFromJson(json);

@override final  int id;
@override final  String title;
@override final  bool adult;
@override final  String overview;
 final  List<GenreDto> _genres;
@override List<GenreDto> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override final  bool video;
@override final  int budget;
@override final  double popularity;
@override final  String status;
@override final  int runtime;
@override@JsonKey(name: 'original_title') final  String originalTitle;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'vote_count') final  int voteCount;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'release_date') final  String? releaseDate;

/// Create a copy of MovieDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailDtoCopyWith<_MovieDetailDto> get copyWith => __$MovieDetailDtoCopyWithImpl<_MovieDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.overview, overview) || other.overview == overview)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.video, video) || other.video == video)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.status, status) || other.status == status)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,adult,overview,const DeepCollectionEquality().hash(_genres),video,budget,popularity,status,runtime,originalTitle,voteAverage,voteCount,backdropPath,posterPath,releaseDate);

@override
String toString() {
  return 'MovieDetailDto(id: $id, title: $title, adult: $adult, overview: $overview, genres: $genres, video: $video, budget: $budget, popularity: $popularity, status: $status, runtime: $runtime, originalTitle: $originalTitle, voteAverage: $voteAverage, voteCount: $voteCount, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailDtoCopyWith<$Res> implements $MovieDetailDtoCopyWith<$Res> {
  factory _$MovieDetailDtoCopyWith(_MovieDetailDto value, $Res Function(_MovieDetailDto) _then) = __$MovieDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, bool adult, String overview, List<GenreDto> genres, bool video, int budget, double popularity, String status, int runtime,@JsonKey(name: 'original_title') String originalTitle,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'release_date') String? releaseDate
});




}
/// @nodoc
class __$MovieDetailDtoCopyWithImpl<$Res>
    implements _$MovieDetailDtoCopyWith<$Res> {
  __$MovieDetailDtoCopyWithImpl(this._self, this._then);

  final _MovieDetailDto _self;
  final $Res Function(_MovieDetailDto) _then;

/// Create a copy of MovieDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? adult = null,Object? overview = null,Object? genres = null,Object? video = null,Object? budget = null,Object? popularity = null,Object? status = null,Object? runtime = null,Object? originalTitle = null,Object? voteAverage = null,Object? voteCount = null,Object? backdropPath = freezed,Object? posterPath = freezed,Object? releaseDate = freezed,}) {
  return _then(_MovieDetailDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<GenreDto>,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int,originalTitle: null == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
