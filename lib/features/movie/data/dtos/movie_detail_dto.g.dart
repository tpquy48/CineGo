// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDetailDto _$MovieDetailDtoFromJson(Map<String, dynamic> json) =>
    _MovieDetailDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      adult: json['adult'] as bool,
      overview: json['overview'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      video: json['video'] as bool,
      budget: (json['budget'] as num).toInt(),
      popularity: (json['popularity'] as num).toDouble(),
      status: json['status'] as String,
      runtime: (json['runtime'] as num).toInt(),
      originalTitle: json['original_title'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toInt(),
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$MovieDetailDtoToJson(_MovieDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'adult': instance.adult,
      'overview': instance.overview,
      'genres': instance.genres,
      'video': instance.video,
      'budget': instance.budget,
      'popularity': instance.popularity,
      'status': instance.status,
      'runtime': instance.runtime,
      'original_title': instance.originalTitle,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
    };
