import 'package:dio/dio.dart';
import '../../env.dart';
import '../models/movie_model.dart';

class MovieRepository {
  final Dio _dio = Dio();
  // final String _apiKey = '51be31b5e8eae8f6483a0cec93491902';
  // final String _baseUrl = 'https://api.themoviedb.org/3';
  // final String _apiKey = dotenv.env['API_KEY'] ?? '';
  final String _apiKey = Env.apiKey;
  final String _baseUrl = Env.baseUrl;

  Future<List<Movie>> getNowPlaying() async {
    try {
      final response = await _dio.get(
        '$_baseUrl/movie/now_playing',
        queryParameters: {'api_key': _apiKey, 'language': 'vi-VN'},
      );

      final List results = response.data['results'];
      return results.map((json) => Movie.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Getting movie list failed: $e');
    }
  }
}
