// part 'movie_remote_datasource_impl.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../dtos/movie_detail_dto.dart';
import '../../dtos/movie_response.dart';

part 'movie_remote_datasource.g.dart';

@RestApi()
sealed class MovieRemoteDatasource {
  factory MovieRemoteDatasource(Dio dio, {String baseUrl}) = _MovieRemoteDatasource;

  @GET('/movie/popular')
  Future<MovieResponse> getPopularMovies({
    @Query('language') String language = 'en-US',
    @Query('page') int page = 1,
  });

  @GET('/discover/movie')
  Future<MovieResponse> getNowPlayingMovies({
    @Query('sort_by') String sortBy = 'popularity.desc',
    @Query('page') int page = 1,
    @Query('include_adult') String includeAdult = 'false',
    @Query('include_video') String includeVideo = 'false',
    @Query('language') String language = 'en-US',
    @Query('with_release_type') String withReleaseType = '2|3',
    @Query('release_date.gte') String? releaseDateGte,
    @Query('release_date.lte') String? releaseDateLte,
  });

  @GET('/search/movie')
  Future<MovieResponse> searchMovies({
    @Query('query') required String query,
    @Query('page') int page = 1,
  });

  @GET('/movie/{movie_id}')
  Future<MovieDetailDto> getMovieDetail({
    @Path('movie_id') required String movieId,
    @Query('language') String language = 'en-US',
  });
}
