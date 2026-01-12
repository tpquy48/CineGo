import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

extension CineGoNavigator on BuildContext {
  void goHome() => goNamed(AppRoutes.home);

  void openMovieDetail(String movieId) {
    pushNamed(AppRoutes.movieDetail, pathParameters: {'movieId': movieId});
  }

  void openSeatSelection(String movieId) {
    pushNamed(AppRoutes.seatSelection, pathParameters: {'movieId': movieId});
  }

  // void openCheckout() {
  //   pushNamed(AppRoutes.checkout);
  // }

  // void openPaymentResult() {
  //   goNamed(AppRoutes.paymentResult);
  // }
}
