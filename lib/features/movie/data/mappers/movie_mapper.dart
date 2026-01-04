// MovieModel -> MovieEntity

import '../../../../env.dart';
import '../../domain/entities/movie_entity.dart';
import '../dtos/movie_dto.dart';

extension MovieMapper on MovieDto {
  MovieEntity toEntity() {
    return MovieEntity(
      id: id,
      title: title,
      overview: overview,
      voteAverage: voteAverage,
      posterPath: posterPath ?? '${Env.imageBaseUrl}$posterPath',
      releaseDate: releaseDate ?? '',
    );
  }
}
