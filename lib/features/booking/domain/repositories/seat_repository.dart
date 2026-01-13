import '../entities/seat_entity.dart';

abstract class SeatRepository {
  Future<List<SeatEntity>> getSeats();

  Future<List<String>> getLockedSeatIds(String showtimeId);

  Future<List<String>> getLockedSeats(String showtimeId);

  Future<void> lockSeats(String showtimeId, List<String> seats);

  Future<void> unlockSeats(String showtimeId, List<String> seats);
}
