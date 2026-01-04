abstract class SeatRepository {
  Future<List<String>> getLockedSeats(String showtimeId);

  Future<void> lockSeats(String showtimeId, List<String> seats);

  Future<void> unlockSeats(String showtimeId, List<String> seats);
}
