import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../repositories/seat_lock_repository.dart';

class UnlockSeatsUseCase {
  final SeatLockRepository repository;
  // final BookingRepository repository;

  UnlockSeatsUseCase(this.repository);

  Future<Either<Failure, void>> call({required String lockId}) {
    return repository.unlockSeats(lockId);
  }

  // Future<Either<Failure, void>> call({
  //   required String showtimeId,
  //   required List<String> seatIds,
  //   // required String lockId,
  // }) {
  //   return repository.unlockSeats(lockId: );
  // }
}
