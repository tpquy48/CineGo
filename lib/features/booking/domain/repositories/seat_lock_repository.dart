import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../results/seat_lock_result.dart';

abstract class SeatLockRepository {
  Future<Set<String>> getLockedSeatIds(String showtimeId);
  Future<Either<Failure, SeatLockResult>> lockSeats(
    String showtimeId,
    List<String> seatIds,
  );
  Future<Either<Failure, void>> unlockSeats(
    // String showtimeId,
    // List<String> seatIds,
    String lockId,
  );
}
