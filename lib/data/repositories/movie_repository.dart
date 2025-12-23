import 'package:dio/dio.dart';
import '../../env.dart';
import '../models/movie_model.dart';

class MovieRepository {
  final Dio _dio = Dio();
  // final String _apiKey = Env.apiKey;
  final String _apiAccessToken = Env.apiReadAccessToken;
  final String _baseUrl = Env.baseUrl;

  Future<List<Movie>> getNowPlaying() async {
    try {
      final response = await _dio.get(
        '$_baseUrl/discover/movie',
        queryParameters: {
          'include_adult': 'false',
          'include_video': 'false',
          'language': 'en-US',
          'page': 1,
          'sort_by': 'popularity.desc',
          'with_release_type': '2|3',
          'release_date.gte': '{min_date}',
          'release_date.lte': '{max_date}',
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $_apiAccessToken',
            'accept': 'application/json',
          },
        ),
      );

      final List results = response.data['results'];
      return results.map((json) => Movie.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Getting movie list failed: $e');
    }
  }
}
