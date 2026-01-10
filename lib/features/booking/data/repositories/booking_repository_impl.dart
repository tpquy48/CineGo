import '../../domain/repositories/booking_repository.dart';
import '../datasources/local/booking_local_datasource.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingLocalDatasource _localDatasource;
  BookingRepositoryImpl(this._localDatasource);

  @override
  Future<void> createBooking({
    required int movieId,
    required String showtimeId,
    required List<String> seats,
    required List<Map<String, dynamic>> foods,
    required int totalPrice,
  }) {
    return _localDatasource.createBooking(
      movieId: movieId,
      showtimeId: showtimeId,
      seats: seats,
      foods: foods,
      totalPrice: totalPrice,
    );
  }
}
