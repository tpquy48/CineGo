import '../repositories/booking_repository.dart';

class CreateBookingUsecase {
  final BookingRepository _repository;

  CreateBookingUsecase(this._repository);

  Future<String> call({
    required int movieId,
    required String showtimeId,
    required List<String> seatIds,
    // required List<Map<String, dynamic>> foods,
    required int totalPrice,
  }) {
    if (seatIds.isEmpty) {
      throw Exception('Cannot create booking without seats');
    }

    return _repository.createBooking(
      movieId: movieId,
      showtimeId: showtimeId,
      seatIds: seatIds,
      // foods: foods,
      totalPrice: totalPrice,
    );
  }
}
