import '../repositories/seat_lock_repository.dart';

class GetLockedSeatsUseCase {
  final SeatLockRepository repository;

  GetLockedSeatsUseCase(this.repository);

  Future<Set<String>> call(String showtimeId) {
    return repository.getLockedSeatIds(showtimeId);
  }
}
