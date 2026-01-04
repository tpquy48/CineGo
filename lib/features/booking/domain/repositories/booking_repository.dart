abstract class BookingRepository {
  Future<void> createBooking({
    required int movieId,
    required String showtimeId,
    required List<String> seats,
    required List<Map<String, dynamic>> foods,
    required int totalPrice,
  });
}
