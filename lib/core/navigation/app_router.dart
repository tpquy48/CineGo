import 'package:go_router/go_router.dart';

import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/home/presentation/screens/splash_screen.dart';
import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', name: AppRoutes.splash, builder: (_, _) => const SplashScreen()),

    // GoRoute(path: '/login', name: AppRoutes.login, builder: (_, _) => const LoginScreen()),
    GoRoute(
      path: '/home',
      name: AppRoutes.home,
      builder: (_, _) => const HomeScreen(),
      // routes: [
      //   GoRoute(
      //     path: 'movie/:movieId',
      //     name: AppRoutes.movieDetail,
      //     builder: (_, state) => MovieDetailScreen(movieId: state.pathParameters['movieId']!),
      //     routes: [
      //       GoRoute(
      //         path: 'seats',
      //         name: AppRoutes.seatSelection,
      //         builder: (_, state) => SeatSelectionScreen(movieId: state.pathParameters['movieId']!),
      //       ),
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
      //     ],
      //   ),
      // ],
    ),
  ],
);
