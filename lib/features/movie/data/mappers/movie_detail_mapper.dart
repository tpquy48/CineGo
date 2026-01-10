import '../../../genre/data/mappers/genre_mapper.dart';
import '../../domain/entities/movie_detail_entity.dart';
import '../dtos/movie_detail_dto.dart';

extension MovieDetailDtoMapper on MovieDetailDto {
  MovieDetailEntity toEntity() {
    return MovieDetailEntity(
      id: id,
      title: title,
      originalTitle: originalTitle,
      adult: adult,
      runtime: runtime,
      overview: overview,
      genres: genres.map((e) => e.toEntity()).toList(),
      video: video,
      budget: budget,
      popularity: popularity,
      status: status,
      voteAverage: voteAverage,
      voteCount: voteCount,
      backdropPath: backdropPath,
      posterPath: posterPath,
      releaseDate: releaseDate,
    );
  }
}
