import 'dart:convert';

import '../app_database.dart';

class BookingLocalDatasource {
  final AppDatabase db;

  BookingLocalDatasource(this.db);

  Future<void> createBooking({
    required int movieId,
    required String showtimeId,
    required List<String> seats,
    required List<Map<String, dynamic>> foods,
    required int totalPrice,
  }) async {
    await db.transaction(() async {
      // Save booking
      await db
          .into(db.bookings)
          .insert(
            BookingsCompanion.insert(
              movieId: movieId,
              showtimeId: showtimeId,
              seats: jsonEncode(seats),
              foods: jsonEncode(foods),
              totalPrice: totalPrice,
              createdAt: DateTime.now(),
            ),
          );

      // Issue ticket
      await db
          .into(db.tickets)
          .insert(
            TicketsCompanion.insert(
              movieId: movieId,
              showtimeId: showtimeId,
              seats: jsonEncode(seats),
              issuedAt: DateTime.now(),
            ),
          );
    });
  }
}
