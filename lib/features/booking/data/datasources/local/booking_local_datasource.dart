import 'package:uuid/uuid.dart';

import '../../../../../core/database/database.dart';
import '../mock/seat_mock_datasource.dart';

sealed class BookingLocalDatasource {
  Future<String> createBooking({
    required int movieId,
    required String showtimeId,
    required List<String> seatIds,
    // required List<Map<String, dynamic>> foods,
    required int totalPrice,
  });
}

class BookingLocalDatasourceImpl implements BookingLocalDatasource {
  final AppDatabase db;
  final SeatMockDatasource seatMockDatasource;

  BookingLocalDatasourceImpl(this.db, this.seatMockDatasource);

  @override
  Future<String> createBooking({
    required int movieId,
    required String showtimeId,
    required List<String> seatIds,
    // required List<Map<String, dynamic>> foods,
    required int totalPrice,
  }) async {
    return db.transaction(() async {
      final bookingId = const Uuid().v4();

      await db
          .into(db.bookingsTable)
          .insert(
            BookingsTableCompanion.insert(
              bookingId: bookingId,
              movieId: movieId,
              showtimeId: showtimeId,
              totalPrice: totalPrice,
              createdAt: DateTime.now(),
            ),
          );

      final seats = await seatMockDatasource.getSeatsByIds(showtimeId, seatIds);

      for (final seatId in seatIds) {
        await db
            .into(db.ticketsTable)
            .insert(
              TicketsTableCompanion.insert(
                ticketId: const Uuid().v4(),
                bookingId: bookingId,
                seatId: seatId,
                price: seats.firstWhere((seat) => seat.id == seatId).price,
                issuedAt: DateTime.now(),
              ),
            );
      }

      return bookingId;
    });

    // await db.transaction(() async {
    //   // Save booking
    //   await db
    //       .into(db.bookingsTable)
    //       .insert(
    //         BookingsTableCompanion.insert(
    //           movieId: movieId,
    //           showtimeId: showtimeId,
    //           seats: jsonEncode(seats),
    //           foods: jsonEncode(foods),
    //           totalPrice: totalPrice,
    //           createdAt: DateTime.now(),
    //         ),
    //       );

    //   // Issue ticket
    //   await db
    //       .into(db.ticketsTable)
    //       .insert(
    //         TicketsTableCompanion.insert(
    //           movieId: movieId,
    //           showtimeId: showtimeId,
    //           seats: jsonEncode(seats),
    //           issuedAt: DateTime.now(),
    //         ),
    //       );
    // });
  }
}
