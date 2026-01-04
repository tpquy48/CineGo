import '../../domain/entities/movie_entity.dart';
import '../../domain/repositories/movie_repository.dart';
import '../datasources/remote/movie_remote_datasource.dart';
import '../mappers/movie_mapper.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDatasource _remoteDatasource;

  MovieRepositoryImpl(this._remoteDatasource);

  @override
  Future<List<MovieEntity>> getPopularMovies() async {
    try {
      final res = await _remoteDatasource.getPopularMovies();
      // Use the mapper to convert DTOs to Entities for the Domain layer
      return res.movies.map((dto) => dto.toEntity()).toList();
    } catch (e) {
      // You can add custom error handling here (from lib/core/error)
      throw Exception('Failed to fetch movies: $e');
    }
  }

  @override
  Future<List<MovieEntity>> getNowPlayingMovies() async {
    try {
      final res = await _remoteDatasource.getNowPlayingMovies();

      return res.movies.map((dto) => dto.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch now-playing movies: $e');
    }
  }

  @override
  Future<List<MovieEntity>> searchMovies({required String query}) async {
    try {
      // NEED TO UPDATE
      final res = await _remoteDatasource.searchMovies(query: query);

      return res.movies.map((dto) => dto.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to fetch movies: $e');
    }
  }
}

// class MovieRepositoryImpl implements MovieRepository {
  // final Dio _dio = Dio();
  // final String _apiKey = Env.apiKey;
  // final String _apiAccessToken = Env.apiReadAccessToken;
  // final String _baseUrl = Env.baseUrl;

  // Future<List<Movie>> getNowPlaying() async {
  //   try {
  //     final response = await _dio.get(
  //       '$_baseUrl/discover/movie',
  //       queryParameters: {
  //         'include_adult': 'false',
  //         'include_video': 'false',
  //         'language': 'en-US',
  //         'page': 1,
  //         'sort_by': 'popularity.desc',
  //         'with_release_type': '2|3',
  //         'release_date.gte': '{min_date}',
  //         'release_date.lte': '{max_date}',
  //       },
  //       options: Options(
  //         headers: {'Authorization': 'Bearer $_apiAccessToken', 'accept': 'application/json'},
  //       ),
  //     );

  //     final List results = response.data['results'];
  //     return results.map((json) => Movie.fromJson(json)).toList();
  //   } catch (e) {
  //     throw Exception('Getting movie list failed: $e');
  //   }
  // }
// }
