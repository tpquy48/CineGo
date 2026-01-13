import '../../domain/entities/seat_entity.dart';
import '../../domain/repositories/seat_repository.dart';
import '../datasources/local/seat_local_datasource.dart';
import '../datasources/local/seat_lock_local_datasource.dart';
import '../mappers/seat_mapper.dart';

class SeatRepositoryImpl implements SeatRepository {
  final SeatLockLocalDatasource lockLocalDatasource;
  final SeatLocalDatasource localDatasource;

  SeatRepositoryImpl({
    required this.lockLocalDatasource,
    required this.localDatasource,
  });

  @override
  Future<List<SeatEntity>> getSeats() async {
    final models = await localDatasource.getSeats();
    return models.map((e) => SeatMapper.toEntity(e)).toList();
  }

  @override
  Future<List<String>> getLockedSeatIds(String showtimeId) {
    return localDatasource.getLockedSeatIds(showtimeId);
  }

  @override
  Future<List<String>> getLockedSeats(String showtimeId) {
    return lockLocalDatasource.getLockedSeats(showtimeId);
  }

  @override
  Future<void> lockSeats(String showtimeId, List<String> seats) {
    return lockLocalDatasource.lockSeats(showtimeId, seats);
  }

  @override
  Future<void> unlockSeats(String showtimeId, List<String> seats) {
    return lockLocalDatasource.unlockSeats(showtimeId, seats);
  }
}
