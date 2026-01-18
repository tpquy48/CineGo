import '../entities/seat_map_entity.dart';
import '../repositories/seat_repository.dart';

class GetSeatMapUseCase {
  final SeatRepository repository;

  GetSeatMapUseCase(this.repository);

  Future<SeatMapEntity> call(String showtimeId) {
    return repository.getSeatMap(showtimeId);
  }
}
