import '../entities/seat_entity.dart';
import '../repositories/seat_repository.dart';

class GetSeatsUsecase {
  final SeatRepository repository;
  GetSeatsUsecase(this.repository);

  Future<List<SeatEntity>> call() {
    return repository.getSeats();
  }
}
