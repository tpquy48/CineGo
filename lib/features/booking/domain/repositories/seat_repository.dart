import '../entities/seat_map_entity.dart';

abstract class SeatRepository {
  Future<SeatMapEntity> getSeatMap(String showtimeId);
}
