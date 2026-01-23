import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

extension CineGoNavigator on BuildContext {
  void goHome() => goNamed(AppRoutes.home);

  void openMovieDetail(String movieId) {
    pushNamed(AppRoutes.movieDetail, pathParameters: {'movieId': movieId});
  }

  void openSeatSelection({
    required String showtimeId,
    required String movieId,
    required String movieTitle,
    required String cinemaName,
    required String hallName,
    required String filterDate,
    required String time,
    required String date,
  }) {
    pushNamed(
      AppRoutes.seatSelection,
      // pathParameters: {'showtimeId': showtimeId, 'movieId': movieId},
      pathParameters: {'showtimeId': showtimeId, 'movieId': movieId},
      extra: {
        'filterDate': filterDate,
        'date': date,
        'time': time,
        'movieTitle': movieTitle,
        'cinemaName': cinemaName,
        'hallName': hallName,
        // 'startTime': showtime.startTime.toIso8601String(),
      },
    );
  }

  void openPayment({
    required String movieId,
    required String movieTitle,
    required String showtimeId,
    required String cinemaName,
    required String hallName,
    required String date,
    required String time,
  }) {
    goNamed(
      AppRoutes.payment,
      pathParameters: {'movieId': movieId},
      extra: {
        'movieTitle': movieTitle,
        'showtimeId': showtimeId,
        'cinemaName': cinemaName,
        'hallName': hallName,
        'date': date,
        'time': time,
      },
    );
  }

  void openTicket({required String movieId}) {
    goNamed(AppRoutes.ticket, pathParameters: {'movieId': movieId});
  }

  // void openPaymentResult() {
  //   goNamed(AppRoutes.paymentResult);
  // }
}
