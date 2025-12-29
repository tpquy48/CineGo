import '../entities/movie_entity.dart';

abstract class MovieRepository {
  Future<List<MovieEntity>> getPopularMovies();
  Future<List<MovieEntity>> getNowPlayingMovies();
  Future<List<MovieEntity>> searchMovies({required String query});
}
