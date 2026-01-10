// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailUiModel {

 int get id;// Header
 String get title; String get backdropUrl; String get posterUrl;// Ratings
 String get imdbScore; String get kinopoiskScore;// About
 String get overview; String get ageRating; String get runtime; String get releaseYear; String get genres;// CTA
 bool get canSelectSession;
/// Create a copy of MovieDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailUiModelCopyWith<MovieDetailUiModel> get copyWith => _$MovieDetailUiModelCopyWithImpl<MovieDetailUiModel>(this as MovieDetailUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.backdropUrl, backdropUrl) || other.backdropUrl == backdropUrl)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.imdbScore, imdbScore) || other.imdbScore == imdbScore)&&(identical(other.kinopoiskScore, kinopoiskScore) || other.kinopoiskScore == kinopoiskScore)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.ageRating, ageRating) || other.ageRating == ageRating)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.releaseYear, releaseYear) || other.releaseYear == releaseYear)&&(identical(other.genres, genres) || other.genres == genres)&&(identical(other.canSelectSession, canSelectSession) || other.canSelectSession == canSelectSession));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,backdropUrl,posterUrl,imdbScore,kinopoiskScore,overview,ageRating,runtime,releaseYear,genres,canSelectSession);

@override
String toString() {
  return 'MovieDetailUiModel(id: $id, title: $title, backdropUrl: $backdropUrl, posterUrl: $posterUrl, imdbScore: $imdbScore, kinopoiskScore: $kinopoiskScore, overview: $overview, ageRating: $ageRating, runtime: $runtime, releaseYear: $releaseYear, genres: $genres, canSelectSession: $canSelectSession)';
}


}

/// @nodoc
abstract mixin class $MovieDetailUiModelCopyWith<$Res>  {
  factory $MovieDetailUiModelCopyWith(MovieDetailUiModel value, $Res Function(MovieDetailUiModel) _then) = _$MovieDetailUiModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String backdropUrl, String posterUrl, String imdbScore, String kinopoiskScore, String overview, String ageRating, String runtime, String releaseYear, String genres, bool canSelectSession
});




}
/// @nodoc
class _$MovieDetailUiModelCopyWithImpl<$Res>
    implements $MovieDetailUiModelCopyWith<$Res> {
  _$MovieDetailUiModelCopyWithImpl(this._self, this._then);

  final MovieDetailUiModel _self;
  final $Res Function(MovieDetailUiModel) _then;

/// Create a copy of MovieDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? backdropUrl = null,Object? posterUrl = null,Object? imdbScore = null,Object? kinopoiskScore = null,Object? overview = null,Object? ageRating = null,Object? runtime = null,Object? releaseYear = null,Object? genres = null,Object? canSelectSession = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,backdropUrl: null == backdropUrl ? _self.backdropUrl : backdropUrl // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,imdbScore: null == imdbScore ? _self.imdbScore : imdbScore // ignore: cast_nullable_to_non_nullable
as String,kinopoiskScore: null == kinopoiskScore ? _self.kinopoiskScore : kinopoiskScore // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,ageRating: null == ageRating ? _self.ageRating : ageRating // ignore: cast_nullable_to_non_nullable
as String,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String,releaseYear: null == releaseYear ? _self.releaseYear : releaseYear // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as String,canSelectSession: null == canSelectSession ? _self.canSelectSession : canSelectSession // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailUiModel].
extension MovieDetailUiModelPatterns on MovieDetailUiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailUiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailUiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailUiModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailUiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailUiModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailUiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String backdropUrl,  String posterUrl,  String imdbScore,  String kinopoiskScore,  String overview,  String ageRating,  String runtime,  String releaseYear,  String genres,  bool canSelectSession)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailUiModel() when $default != null:
return $default(_that.id,_that.title,_that.backdropUrl,_that.posterUrl,_that.imdbScore,_that.kinopoiskScore,_that.overview,_that.ageRating,_that.runtime,_that.releaseYear,_that.genres,_that.canSelectSession);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String backdropUrl,  String posterUrl,  String imdbScore,  String kinopoiskScore,  String overview,  String ageRating,  String runtime,  String releaseYear,  String genres,  bool canSelectSession)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailUiModel():
return $default(_that.id,_that.title,_that.backdropUrl,_that.posterUrl,_that.imdbScore,_that.kinopoiskScore,_that.overview,_that.ageRating,_that.runtime,_that.releaseYear,_that.genres,_that.canSelectSession);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String backdropUrl,  String posterUrl,  String imdbScore,  String kinopoiskScore,  String overview,  String ageRating,  String runtime,  String releaseYear,  String genres,  bool canSelectSession)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailUiModel() when $default != null:
return $default(_that.id,_that.title,_that.backdropUrl,_that.posterUrl,_that.imdbScore,_that.kinopoiskScore,_that.overview,_that.ageRating,_that.runtime,_that.releaseYear,_that.genres,_that.canSelectSession);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetailUiModel implements MovieDetailUiModel {
  const _MovieDetailUiModel({required this.id, required this.title, required this.backdropUrl, required this.posterUrl, required this.imdbScore, required this.kinopoiskScore, required this.overview, required this.ageRating, required this.runtime, required this.releaseYear, required this.genres, required this.canSelectSession});
  

@override final  int id;
// Header
@override final  String title;
@override final  String backdropUrl;
@override final  String posterUrl;
// Ratings
@override final  String imdbScore;
@override final  String kinopoiskScore;
// About
@override final  String overview;
@override final  String ageRating;
@override final  String runtime;
@override final  String releaseYear;
@override final  String genres;
// CTA
@override final  bool canSelectSession;

/// Create a copy of MovieDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailUiModelCopyWith<_MovieDetailUiModel> get copyWith => __$MovieDetailUiModelCopyWithImpl<_MovieDetailUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailUiModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.backdropUrl, backdropUrl) || other.backdropUrl == backdropUrl)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.imdbScore, imdbScore) || other.imdbScore == imdbScore)&&(identical(other.kinopoiskScore, kinopoiskScore) || other.kinopoiskScore == kinopoiskScore)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.ageRating, ageRating) || other.ageRating == ageRating)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.releaseYear, releaseYear) || other.releaseYear == releaseYear)&&(identical(other.genres, genres) || other.genres == genres)&&(identical(other.canSelectSession, canSelectSession) || other.canSelectSession == canSelectSession));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,backdropUrl,posterUrl,imdbScore,kinopoiskScore,overview,ageRating,runtime,releaseYear,genres,canSelectSession);

@override
String toString() {
  return 'MovieDetailUiModel(id: $id, title: $title, backdropUrl: $backdropUrl, posterUrl: $posterUrl, imdbScore: $imdbScore, kinopoiskScore: $kinopoiskScore, overview: $overview, ageRating: $ageRating, runtime: $runtime, releaseYear: $releaseYear, genres: $genres, canSelectSession: $canSelectSession)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailUiModelCopyWith<$Res> implements $MovieDetailUiModelCopyWith<$Res> {
  factory _$MovieDetailUiModelCopyWith(_MovieDetailUiModel value, $Res Function(_MovieDetailUiModel) _then) = __$MovieDetailUiModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String backdropUrl, String posterUrl, String imdbScore, String kinopoiskScore, String overview, String ageRating, String runtime, String releaseYear, String genres, bool canSelectSession
});




}
/// @nodoc
class __$MovieDetailUiModelCopyWithImpl<$Res>
    implements _$MovieDetailUiModelCopyWith<$Res> {
  __$MovieDetailUiModelCopyWithImpl(this._self, this._then);

  final _MovieDetailUiModel _self;
  final $Res Function(_MovieDetailUiModel) _then;

/// Create a copy of MovieDetailUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? backdropUrl = null,Object? posterUrl = null,Object? imdbScore = null,Object? kinopoiskScore = null,Object? overview = null,Object? ageRating = null,Object? runtime = null,Object? releaseYear = null,Object? genres = null,Object? canSelectSession = null,}) {
  return _then(_MovieDetailUiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,backdropUrl: null == backdropUrl ? _self.backdropUrl : backdropUrl // ignore: cast_nullable_to_non_nullable
as String,posterUrl: null == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String,imdbScore: null == imdbScore ? _self.imdbScore : imdbScore // ignore: cast_nullable_to_non_nullable
as String,kinopoiskScore: null == kinopoiskScore ? _self.kinopoiskScore : kinopoiskScore // ignore: cast_nullable_to_non_nullable
as String,overview: null == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String,ageRating: null == ageRating ? _self.ageRating : ageRating // ignore: cast_nullable_to_non_nullable
as String,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String,releaseYear: null == releaseYear ? _self.releaseYear : releaseYear // ignore: cast_nullable_to_non_nullable
as String,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as String,canSelectSession: null == canSelectSession ? _self.canSelectSession : canSelectSession // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
