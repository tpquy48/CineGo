import '../../../../core/cache/movie_memory_cache.dart';
import '../../domain/entities/movie_detail_entity.dart';
import '../../domain/entities/movie_entity.dart';
import '../../domain/repositories/movie_repository.dart';
import '../datasources/remote/movie_remote_datasource.dart';
import '../mappers/movie_detail_mapper.dart';
import '../mappers/movie_mapper.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDatasource remoteDatasource;
  final MovieMemoryCache cache;

  MovieRepositoryImpl({required this.remoteDatasource, required this.cache});

  @override
  Future<List<MovieEntity>> getPopularMovies({required int page}) async {
    try {
      final res = await remoteDatasource.getPopularMovies(page: page);
      // Use the mapper to convert DTOs to Entities for the Domain layer
      final entities = res.movies.map((dto) => dto.toEntity()).toList();
      return entities;
    } catch (e) {
      // Should add custom error handling here (from lib/core/error)
      throw Exception('Failed to fetch movies: $e');
    }
  }

  @override
  Future<List<MovieEntity>> getNowPlayingMovies({required int page}) async {
    try {
      final res = await remoteDatasource.getNowPlayingMovies(page: page);

      return res.movies.map((dto) => dto.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch now-playing movies: $e');
    }
  }

  @override
  Future<List<MovieEntity>> searchMovies({required String query}) async {
    try {
      // NEED TO UPDATE
      final res = await remoteDatasource.searchMovies(query: query);

      return res.movies.map((dto) => dto.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch movies: $e');
    }
  }

  @override
  Future<MovieDetailEntity> getMovieDetail(String movieId) async {
    try {
      // Try cache first
      final cachedMovie = cache.getMovieDetail(movieId);
      if (cachedMovie != null) {
        return cachedMovie;
      }

      // Fetch from API
      final dto = await remoteDatasource.getMovieDetail(movieId: movieId);
      final entity = dto.toEntity();

      // Save to cache
      cache.save(entity);

      return entity;
    } catch (e) {
      throw Exception('Failed to fetch movies: $e');
    }
  }
}
