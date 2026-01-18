import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../env.dart';
import '../../features/booking/data/datasources/local/booking_local_datasource.dart';
import '../../features/booking/data/datasources/local/seat_local_datasource.dart';
import '../../features/booking/data/datasources/local/seat_lock_local_datasource.dart';
import '../../features/booking/data/datasources/mock/seat_mock_datasource.dart';
import '../../features/booking/data/repositories/booking_repository_impl.dart';
import '../../features/booking/data/repositories/seat_lock_repository_impl.dart';
import '../../features/booking/data/repositories/seat_repository_impl.dart';
import '../../features/booking/domain/booking_repositories.dart';
import '../../features/booking/domain/booking_usecases.dart';
import '../../features/booking/domain/repositories/seat_lock_repository.dart';
import '../../features/booking/domain/usecases/get_seat_map_usecase.dart';
import '../../features/booking/presentation/bloc/booking/booking_cubit.dart';
import '../../features/booking/presentation/bloc/seat_selection/seat_selection_cubit.dart';
import '../../features/genre/data/datasources/remote/genre_remote_datasource.dart';
import '../../features/genre/data/repositories/genre_repository_impl.dart';
import '../../features/genre/domain/repositories/genre_repository.dart';
import '../../features/genre/domain/usecases/get_genres_usecase.dart';
import '../../features/movie/data/datasources/mock/sessions_mock_datasource.dart';
import '../../features/movie/data/datasources/remote/movie_remote_datasource.dart';
import '../../features/movie/data/repositories/movie_repository_impl.dart';
import '../../features/movie/data/repositories/sessions_repository_impl.dart';
import '../../features/movie/domain/repositories/movie_repository.dart';
import '../../features/movie/domain/repositories/sessions_repository.dart';
import '../../features/movie/domain/usecases/get_movie_detail_usecase.dart';
import '../../features/movie/domain/usecases/get_popular_movies_usecase.dart';
import '../../features/movie/domain/usecases/get_sessions_usecase.dart';
import '../../features/movie/presentation/bloc/movie_detail_bloc.dart';
import '../../features/movie/presentation/cubit/home_movie_cubit.dart';
import '../../features/movie/presentation/cubit/sessions_cubit.dart';
import '../cache/genre_cache.dart';
import '../cache/movie_memory_cache.dart';
import '../database/database.dart';
import '../network/interceptors/tmdb_interceptor.dart';

final sl = GetIt.instance; // sl stands for Service Locator

Future<void> init() async {
  // 1. Core / External
  sl.registerLazySingleton(() => AppDatabase());
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => TmdbInterceptor());
  // sl.registerLazySingleton(() => Dio()..interceptors.add(TmdbInterceptor()));

  // Set up Dio with the interceptor
  final dio = sl<Dio>();
  dio.options.baseUrl = Env.baseUrl;
  dio.interceptors.add(sl<TmdbInterceptor>());

  // 2. Cache services
  sl.registerLazySingleton<GenreCache>(
    () => GenreCacheImpl(sl<GetGenresUsecase>()),
  );
  sl.registerLazySingleton<MovieMemoryCache>(() => MovieMemoryCacheImpl());

  // 3. Datasources
  sl.registerLazySingleton<MovieRemoteDatasource>(
    () => MovieRemoteDatasource(sl<Dio>()),
  );
  sl.registerLazySingleton<GenreRemoteDatasource>(
    () => GenreRemoteDatasource(sl<Dio>()),
  );
  sl.registerLazySingleton<SessionsMockDatasource>(
    () => SessionsMockDatasource(),
  );
  sl.registerLazySingleton<SeatLockLocalDatasource>(
    () => SeatLockLocalDatasourceImpl(sl<AppDatabase>()),
  );
  sl.registerLazySingleton<SeatLocalDatasource>(
    () => SeatLocalDatasourceImpl(sl()),
  );
  sl.registerLazySingleton<SeatMockDatasource>(() => SeatMockDatasourceImpl());
  sl.registerLazySingleton<BookingLocalDatasource>(
    () =>
        BookingLocalDatasourceImpl(sl<AppDatabase>(), sl<SeatMockDatasource>()),
  );

  // 4. Repositories
  sl.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      remoteDatasource: sl<MovieRemoteDatasource>(),
      cache: sl<MovieMemoryCache>(),
    ),
  );
  sl.registerLazySingleton<GenreRepository>(
    () => GenreRepositoryImpl(sl<GenreRemoteDatasource>()),
  );
  sl.registerLazySingleton<SessionsRepository>(
    () => SessionsRepositoryImpl(sl<SessionsMockDatasource>()),
  );
  sl.registerLazySingleton<SeatRepository>(
    () => SeatRepositoryImpl(localDatasource: sl(), mockDatasource: sl()),
  );
  sl.registerLazySingleton<SeatLockRepository>(
    () => SeatLockRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<BookingRepository>(
    () => BookingRepositoryImpl(sl<BookingLocalDatasource>()),
  );

  // 5. UseCases
  sl.registerLazySingleton<GetPopularMoviesUsecase>(
    () => GetPopularMoviesUsecase(sl<MovieRepository>()),
  );
  sl.registerLazySingleton<GetGenresUsecase>(
    () => GetGenresUsecase(sl<GenreRepository>()),
  );
  sl.registerLazySingleton<GetMovieDetailUsecase>(
    () => GetMovieDetailUsecase(sl<MovieRepository>()),
  );
  sl.registerLazySingleton<GetSessionsUsecase>(
    () => GetSessionsUsecase(sl<SessionsRepository>()),
  );
  sl.registerLazySingleton<GetLockedSeatsUseCase>(
    () => GetLockedSeatsUseCase(sl()),
  );
  sl.registerLazySingleton(() => GetSeatMapUseCase(sl()));
  sl.registerLazySingleton(() => LockSeatsUseCase(sl()));
  sl.registerLazySingleton(() => UnlockSeatsUseCase(sl()));
  sl.registerLazySingleton(() => CreateBookingUsecase(sl<BookingRepository>()));

  // 6. Blocs (Register as Factory so a new instance is created each time)
  sl.registerFactory<MovieDetailBloc>(
    () => MovieDetailBloc(sl<GetMovieDetailUsecase>()),
  );

  // 7. Cubits
  sl.registerFactory<HomeMovieCubit>(
    () => HomeMovieCubit(sl<GetPopularMoviesUsecase>()),
  );
  sl.registerFactory(() => SessionsCubit(sl<GetSessionsUsecase>()));
  sl.registerFactory<SeatSelectionCubit>(
    () => SeatSelectionCubit(
      getSeatMap: sl(),
      getLockedSeats: sl(),
      lockSeats: sl(),
    ),
  );
  sl.registerFactory<BookingCubit>(
    () => BookingCubit(
      createBooking: sl(),
      getLockedSeats: sl(),
      unlockSeats: sl(),
    ),
  );
  // sl.registerFactory(() => SeatListCubit(sl()));
}
