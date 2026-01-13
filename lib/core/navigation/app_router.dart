import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/booking/domain/booking_usecases.dart';
import '../../features/booking/presentation/bloc/seat_list/seat_list_cubit.dart';
import '../../features/booking/presentation/bloc/seat_map/seat_map_bloc.dart';
import '../../features/booking/presentation/bloc/seat_map/seat_map_event.dart';
import '../../features/booking/presentation/bloc/seat_selection/seat_selection_cubit.dart';
import '../../features/booking/presentation/screens/seat_selection_screen.dart';
import '../../features/movie/domain/usecases/get_movie_detail_usecase.dart';
import '../../features/movie/presentation/bloc/movie_detail_bloc.dart';
import '../../features/movie/presentation/bloc/movie_detail_event.dart';
import '../../features/movie/presentation/screens/home_screen.dart';
import '../../features/movie/presentation/screens/movie_detail_screen.dart';
import '../../features/movie/presentation/screens/splash_screen.dart';
import '../di/service_locator.dart';
import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.splash,
      builder: (_, _) => const SplashScreen(),
    ),

    // GoRoute(path: '/login', name: AppRoutes.login, builder: (_, _) => const LoginScreen()),
    GoRoute(
      path: '/home',
      name: AppRoutes.home,
      builder: (_, _) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'movie/:movieId',
          name: AppRoutes.movieDetail,
          builder: (context, state) {
            final movieId = state.pathParameters['movieId']!;

            return BlocProvider(
              create: (_) =>
                  MovieDetailBloc(sl<GetMovieDetailUsecase>())
                    ..add(LoadMovieDetail(movieId)),
              child: MovieDetailScreen(movieId: movieId),
            );
          },
          routes: [
            GoRoute(
              path: 'seats/:showtimeId',
              name: AppRoutes.seatSelection,
              builder: (_, state) {
                final showtimeId = state.pathParameters['showtimeId']!;

                return MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (_) =>
                          SeatMapBloc(sl<GetLockedSeatsUsecase>())
                            ..add(LoadSeatMapEvent(showtimeId)),
                    ),
                    BlocProvider(create: (_) => SeatSelectionCubit()),
                    BlocProvider(create: (_) => SeatListCubit(sl())),
                  ],
                  child: SeatSelectionScreen(showtimeId),
                );
              },
            ),
            //       GoRoute(
            //         path: 'checkout',
            //         name: AppRoutes.checkout,
            //         builder: (_, state) => const CheckoutPage(),
            //       ),
            //       GoRoute(
            //         path: 'result',
            //         name: AppRoutes.paymentResult,
            //         builder: (_, state) => const PaymentResultScreen(),
            //       ),
          ],
        ),
      ],
    ),
  ],
);
