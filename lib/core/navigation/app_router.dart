import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/booking/presentation/bloc/booking/booking_cubit.dart';
import '../../features/booking/presentation/bloc/seat_selection/seat_selection_cubit.dart';
import '../../features/booking/presentation/screens/seat_selection_screen.dart';
import '../../features/movie/domain/usecases/get_movie_detail_usecase.dart';
import '../../features/movie/presentation/bloc/movie_detail_bloc.dart';
import '../../features/movie/presentation/bloc/movie_detail_event.dart';
import '../../features/movie/presentation/screens/home_screen.dart';
import '../../features/movie/presentation/screens/movie_detail_screen.dart';
import '../../features/movie/presentation/screens/splash_screen.dart';
import '../../features/payment/presentation/screens/pay_screen.dart';
import '../../features/payment/presentation/screens/ticket_screen.dart';
import '../di/service_locator.dart';
import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  debugLogDiagnostics: true,
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
            /// BOOKING FLOW SCOPE
            ShellRoute(
              builder: (context, state, child) {
                return BlocProvider(
                  create: (_) =>
                      BookingCubit(lockSeats: sl(), unlockSeats: sl()),
                  child: child,
                );
              },
              routes: [
                /// SEAT SELECTION
                GoRoute(
                  path: 'seats/:showtimeId',
                  name: AppRoutes.seatSelection,
                  builder: (_, state) {
                    final showtimeId = state.pathParameters['showtimeId']!;
                    final movieId = state.pathParameters['movieId']!;

                    final extra = state.extra as Map<String, dynamic>;
                    final date = extra['date'] as String;
                    final time = extra['time'] as String;
                    final filterDate = extra['filterDate'] as String;
                    final movieTitle = extra['movieTitle'] as String;
                    final cinemaName = extra['cinemaName'] as String;
                    final hallName = extra['hallName'] as String;

                    return BlocProvider(
                      create: (_) => SeatSelectionCubit(
                        getSeatMap: sl(),
                        getLockedSeats: sl(),
                        lockSeats: sl(),
                      )..loadSeatMap(showtimeId),
                      child: SeatSelectionScreen(
                        args: SeatSelectionArguments(
                          movieId: movieId,
                          showtimeId: showtimeId,
                          date: date,
                          time: time,
                          movieTitle: movieTitle,
                          cinemaName: cinemaName,
                          hallName: hallName,
                          filterDate: filterDate,
                        ),
                      ),
                    );
                  },
                ),

                /// PAYMENT
                GoRoute(
                  path: 'payment',
                  name: AppRoutes.payment,
                  builder: (_, state) {
                    final extra = state.extra as Map<String, dynamic>;
                    final date = extra['date'] as String;
                    final time = extra['time'] as String;

                    return PayScreen(
                      args: PayScreenArguments(date: date, time: time),
                    );
                  },
                ),

                GoRoute(
                  path: 'ticket',
                  name: AppRoutes.ticket,
                  builder: (_, state) {
                    return const TicketScreen();
                  },
                ),
              ],
            ),
            // GoRoute(
            //   path: 'result',
            //   name: AppRoutes.paymentResult,
            //   builder: (_, state) => const PaymentResultScreen(),
            // ),
          ],
        ),
      ],
    ),
  ],
);
