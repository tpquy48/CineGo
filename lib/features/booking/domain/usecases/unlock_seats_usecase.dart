import '../repositories/seat_lock_repository.dart';

class UnlockSeatsUseCase {
  final SeatLockRepository repository;

  UnlockSeatsUseCase(this.repository);

  Future<void> call(String showtimeId, List<String> seatIds) {
    return repository.unlockSeats(showtimeId, seatIds);
  }
}
