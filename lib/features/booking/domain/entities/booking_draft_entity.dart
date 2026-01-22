import '../../presentation/models/seat_ui_model.dart';

class BookingDraftEntity {
  final String movieId;
  final String movieTitle;

  final String cinemaName;
  final String hallName;

  final DateTime startTime;

  final String showtimeId;

  final List<SeatUiModel> seats;
  final int totalPrice;

  final String lockId;
  final DateTime expiresAt;

  const BookingDraftEntity({
    required this.movieId,
    required this.movieTitle,
    required this.cinemaName,
    required this.hallName,
    required this.startTime,
    required this.showtimeId,
    required this.seats,
    required this.totalPrice,
    required this.lockId,
    required this.expiresAt,
  });
}
