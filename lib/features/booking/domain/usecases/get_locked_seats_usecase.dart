import '../repositories/seat_repository.dart';

class GetLockedSeatsUsecase {
  final SeatRepository _repository;

  GetLockedSeatsUsecase(this._repository);

  Future<List<String>> call(String showtimeId) {
    return _repository.getLockedSeats(showtimeId);
  }
}
