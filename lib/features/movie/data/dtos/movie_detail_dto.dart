// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../genre/data/dtos/genre_dto.dart';

part 'movie_detail_dto.freezed.dart';
part 'movie_detail_dto.g.dart';

// Dtos use for remote data
@freezed
sealed class MovieDetailDto with _$MovieDetailDto {
  const factory MovieDetailDto({
    required int id,
    required String title,
    required bool adult,
    required String overview,
    required List<GenreDto> genres,
    required bool video,
    required int budget,
    required double popularity,
    required String status,
    required int runtime,

    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
  }) = _MovieDetailDto;

  factory MovieDetailDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailDtoFromJson(json);
}
