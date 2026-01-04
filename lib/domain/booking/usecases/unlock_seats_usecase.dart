import '../repositories/seat_repository.dart';

class UnlockSeatsUsecase {
  final SeatRepository _repository;

  UnlockSeatsUsecase(this._repository);

  Future<void> call({required String showtimeId, required List<String> seats}) {
    if (seats.isEmpty) {
      return Future.value();
    }

    return _repository.unlockSeats(showtimeId, seats);
  }
}
