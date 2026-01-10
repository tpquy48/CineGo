// MovieModel -> MovieEntity

import '../../../../core/cache/genre_cache.dart';
import '../../../../core/di/service_locator.dart';
import '../../../../env.dart';
import '../../domain/entities/movie_entity.dart';
import '../dtos/movie_dto.dart';

extension MovieMapper on MovieDto {
  MovieEntity toEntity() {
    final genreCache = sl<GenreCache>();
    return MovieEntity(
      id: id,
      title: title,
      overview: overview,
      genreIds: genreIds,
      genreNames: genreIds.map((id) => genreCache.getName(id)).whereType<String>().toList(),
      voteAverage: double.parse(voteAverage.toStringAsFixed(1)),
      posterPath: '${Env.imageBaseUrl}$posterPath',
      releaseDate: releaseDate ?? '',
    );
  }
}
