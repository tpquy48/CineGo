import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_entity.freezed.dart';

@freezed
sealed class MovieEntity with _$MovieEntity {
  const factory MovieEntity({
    required int id,
    required String title,
    required String overview,
    required List<int> genreIds,
    required List<String> genreNames,
    required String posterPath,
    required double voteAverage,
    required String releaseDate,
  }) = _MovieEntity;
}

// extension MovieEntityToDetailMapper on MovieEntity {
//   MovieDetailEntity toPartialDetailEntity() {
//     return MovieDetailEntity(
//       id: id,
//       title: title,
//       overview: overview,
//       genreIds: genreIds,
//       genreNames: genreNames,
//       posterPath: posterPath,
//       voteAverage: voteAverage,
//       releaseDate: releaseDate,

//       // Not available in list API
//       genres: const [],
//       adult: false,
//       video: false,
//       budget: 0,
//       status: '',
//     );
//   }
// }
