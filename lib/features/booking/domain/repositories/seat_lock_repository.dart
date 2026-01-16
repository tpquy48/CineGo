abstract class SeatLockRepository {
  Future<Set<String>> getLockedSeatIds(String showtimeId);
  Future<void> lockSeats(String showtimeId, List<String> seatIds);
  Future<void> unlockSeats(String showtimeId, List<String> seatIds);
}
