import '../entities/movie_detail_entity.dart';
import '../entities/movie_entity.dart';

abstract class MovieRepository {
  Future<List<MovieEntity>> getPopularMovies({required int page});
  Future<List<MovieEntity>> getNowPlayingMovies({required int page});
  Future<List<MovieEntity>> searchMovies({required String query});
  Future<MovieDetailEntity> getMovieDetail(String movieId);
}
