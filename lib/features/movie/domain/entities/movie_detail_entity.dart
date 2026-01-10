import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../genre/domain/entities/genre_entity.dart';

part 'movie_detail_entity.freezed.dart';

@freezed
sealed class MovieDetailEntity with _$MovieDetailEntity {
  const factory MovieDetailEntity({
    required int id,
    required String title,
    required String originalTitle,
    required bool adult,
    required String overview,
    required List<GenreEntity> genres,
    required bool video,
    required int budget,
    required double popularity,
    required String status,
    required double voteAverage,
    required int voteCount,
    required int runtime,

    String? backdropPath,
    String? posterPath,
    String? releaseDate,
  }) = _MovieDetailEntity;
}
