import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../env.dart';
import '../../features/genre/data/datasources/remote/genre_remote_datasource.dart';
import '../../features/genre/data/repositories/genre_repository_impl.dart';
import '../../features/genre/domain/repositories/genre_repository.dart';
import '../../features/genre/domain/usecases/get_genres_usecase.dart';
import '../../features/movie/data/datasources/remote/movie_remote_datasource.dart';
import '../../features/movie/data/repositories/movie_repository_impl.dart';
import '../../features/movie/domain/repositories/movie_repository.dart';
import '../../features/movie/domain/usecases/get_popular_movies_usecase.dart';
import '../../features/movie/presentation/bloc/movie_bloc.dart';
import '../../features/movie/presentation/cubit/home_movie_cubit.dart';
import '../cache/genre_cache.dart';
import '../network/interceptors/tmdb_interceptor.dart';

final sl = GetIt.instance; // sl stands for Service Locator

Future<void> init() async {
  // 1. Core / External
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => TmdbInterceptor());
  // sl.registerLazySingleton(() => Dio()..interceptors.add(TmdbInterceptor()));

  // Set up Dio with the interceptor
  final dio = sl<Dio>();
  dio.options.baseUrl = Env.baseUrl;
  dio.interceptors.add(sl<TmdbInterceptor>());

  // 2. Datasources
  sl.registerLazySingleton<MovieRemoteDatasource>(() => MovieRemoteDatasource(sl<Dio>()));
  sl.registerLazySingleton<GenreRemoteDatasource>(() => GenreRemoteDatasource(sl<Dio>()));

  // 3. Repositories
  sl.registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(sl<MovieRemoteDatasource>()));
  sl.registerLazySingleton<GenreRepository>(() => GenreRepositoryImpl(sl<GenreRemoteDatasource>()));

  // 4. UseCases
  sl.registerLazySingleton<GetPopularMoviesUsecase>(
    () => GetPopularMoviesUsecase(sl<MovieRepository>()),
  );
  sl.registerLazySingleton<GetGenresUsecase>(() => GetGenresUsecase(sl<GenreRepository>()));

  // 5. Blocs (Register as Factory so a new instance is created each time)
  sl.registerFactory<MovieBloc>(() => MovieBloc(sl<GetPopularMoviesUsecase>()));

  // 6. Cubits
  sl.registerFactory<HomeMovieCubit>(() => HomeMovieCubit(sl<GetPopularMoviesUsecase>()));

  // 7. Cache services
  sl.registerLazySingleton<GenreCache>(() => GenreCacheImpl(sl<GetGenresUsecase>()));
}
