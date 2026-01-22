import '../../domain/repositories/booking_repository.dart';
import '../datasources/local/booking_local_datasource.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingLocalDatasource _localDatasource;
  BookingRepositoryImpl(this._localDatasource);

  // @override
  // Future<String> createBooking({
  //   required int movieId,
  //   required String showtimeId,
  //   required List<String> seatIds,
  //   // required List<Map<String, dynamic>> foods,
  //   required int totalPrice,
  // }) {
  //   return _localDatasource.createBooking(
  //     movieId: movieId,
  //     showtimeId: showtimeId,
  //     seatIds: seatIds,
  //     // foods: foods,
  //     totalPrice: totalPrice,
  //   );
  // }

  // @override
  // Future<Either<Failure, SeatLockResult>> lockSeats({
  //   required String showtimeId,
  //   required List<String> seatIds,
  // }) async {
  //   // mock delay
  //   await Future.delayed(const Duration(milliseconds: 500));

  //   try {
  //     // call API / mock
  //     return Right(
  //       SeatLockResult(
  //         lockId: const Uuid().v4(),
  //         expiresAt: DateTime.now().add(const Duration(minutes: 5)),
  //       ),
  //     );
  //   }
  //   // on SeatLockedException {
  //   //   return const Left(SeatAlreadyLockedFailure());
  //   // }
  //   on SocketException {
  //     return const Left(NetworkFailure());
  //   } catch (e) {
  //     return Left(UnknownFailure(e.toString()));
  //   }
  // }

  // @override
  // Future<Either<Failure, void>> unlockSeats({required String lockId}) async {
  //   return const Right(null);
  // }
}
