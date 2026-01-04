import '../../../domain/booking/repositories/seat_repository.dart';
import '../local/datasources/seat_lock_local_datasource.dart';

class SeatRepositoryImpl implements SeatRepository {
  final SeatLockLocalDatasource _localDataSource;

  SeatRepositoryImpl(this._localDataSource);

  @override
  Future<List<String>> getLockedSeats(String showtimeId) {
    return _localDataSource.getLockedSeats(showtimeId);
  }

  @override
  Future<void> lockSeats(String showtimeId, List<String> seats) {
    return _localDataSource.lockSeats(showtimeId, seats);
  }

  @override
  Future<void> unlockSeats(String showtimeId, List<String> seats) {
    return _localDataSource.unlockSeats(showtimeId, seats);
  }
}
