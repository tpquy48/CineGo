import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../repositories/seat_lock_repository.dart';
import '../results/seat_lock_result.dart';

class LockSeatsUseCase {
  final SeatLockRepository repository;
  // final BookingRepository repository;

  LockSeatsUseCase(this.repository);

  // Future<void> call({
  //   required String showtimeId,
  //   required List<String> seatIds,
  // }) {
  //   return repository.lockSeats(showtimeId, seatIds);
  // }

  //   Future<Either<Failure, SeatLockResult>> lockSeatsUseCase({
  //   required String showtimeId,
  //   required List<String> seatIds,
  // });

  Future<Either<Failure, SeatLockResult>> call({
    required String showtimeId,
    required List<String> seatIds,
  }) {
    return repository.lockSeats(showtimeId, seatIds);
  }
}
