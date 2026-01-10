import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../responses/genre_response.dart';

part 'genre_remote_datasource.g.dart';

@RestApi()
sealed class GenreRemoteDatasource {
  factory GenreRemoteDatasource(Dio dio, {String baseUrl}) = _GenreRemoteDatasource;

  @GET('/genre/movie/list')
  Future<GenreResponse> getGenres();
}
