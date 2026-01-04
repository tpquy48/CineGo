import '../repositories/booking_repository.dart';

class CreateBookingUsecase {
  final BookingRepository _repository;

  CreateBookingUsecase(this._repository);

  Future<void> call({
    required int movieId,
    required String showtimeId,
    required List<String> seats,
    required List<Map<String, dynamic>> foods,
    required int totalPrice,
  }) {
    if (seats.isEmpty) {
      throw Exception('Cannot create booking without seats');
    }

    return _repository.createBooking(
      movieId: movieId,
      showtimeId: showtimeId,
      seats: seats,
      foods: foods,
      totalPrice: totalPrice,
    );
  }
}
