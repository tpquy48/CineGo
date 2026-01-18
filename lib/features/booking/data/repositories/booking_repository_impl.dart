import '../../domain/repositories/booking_repository.dart';
import '../datasources/local/booking_local_datasource.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingLocalDatasource _localDatasource;
  BookingRepositoryImpl(this._localDatasource);

  @override
  Future<String> createBooking({
    required int movieId,
    required String showtimeId,
    required List<String> seatIds,
    // required List<Map<String, dynamic>> foods,
    required int totalPrice,
  }) {
    return _localDatasource.createBooking(
      movieId: movieId,
      showtimeId: showtimeId,
      seatIds: seatIds,
      // foods: foods,
      totalPrice: totalPrice,
    );
  }
}
