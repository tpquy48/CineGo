abstract class BookingRepository {
  Future<String> createBooking({
    required int movieId,
    required String showtimeId,
    required List<String> seatIds,
    // required List<Map<String, dynamic>> foods,
    required int totalPrice,
  });
}
