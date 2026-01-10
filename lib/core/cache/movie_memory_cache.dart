import '../../features/movie/domain/entities/movie_detail_entity.dart';
import '../../features/movie/domain/entities/movie_entity.dart';

sealed class MovieMemoryCache {
  MovieDetailEntity? getMovieDetail(String id);
  void save(MovieDetailEntity movie);
  void saveAll(List<MovieEntity> movies);
}

class MovieMemoryCacheImpl implements MovieMemoryCache {
  final Map<String, MovieDetailEntity> _cache = {};

  @override
  MovieDetailEntity? getMovieDetail(String id) => _cache[id];

  @override
  void save(MovieDetailEntity movie) {
    _cache[movie.id.toString()] = movie;
  }

  @override
  void saveAll(List<MovieEntity> movies) {
    // TODO
    // for (final movie in movies) {
    //   _cache[movie.id.toString()] = movie;
    // }
  }
}
