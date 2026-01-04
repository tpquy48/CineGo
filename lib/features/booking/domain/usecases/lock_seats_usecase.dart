import '../repositories/seat_repository.dart';

class LockSeatsUsecase {
  final SeatRepository _repository;

  LockSeatsUsecase(this._repository);

  Future<void> call({required String showtimeId, required List<String> seats}) {
    if (seats.isEmpty) {
      return Future.value();
    }
    return _repository.lockSeats(showtimeId, seats);
  }
}
