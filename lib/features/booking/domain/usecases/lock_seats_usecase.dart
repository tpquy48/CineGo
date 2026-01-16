import '../repositories/seat_lock_repository.dart';

class LockSeatsUseCase {
  final SeatLockRepository repository;

  LockSeatsUseCase(this.repository);

  Future<void> call(String showtimeId, List<String> seatIds) {
    return repository.lockSeats(showtimeId, seatIds);
  }
}
