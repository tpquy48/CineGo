import '../../../../core/bloc/bloc.dart';

abstract class BookingEvent extends BaseEvent {}

class ConfirmBookingEvent extends BookingEvent {
  final int movieId;
  final String showtimeId;
  final List<String> seats;
  final List<Map<String, dynamic>> foods;
  final int totalPrice;

  ConfirmBookingEvent({
    required this.movieId,
    required this.showtimeId,
    required this.seats,
    required this.foods,
    required this.totalPrice,
  });

  @override
  List<Object?> get props => [movieId, showtimeId, seats, foods, totalPrice];
}
