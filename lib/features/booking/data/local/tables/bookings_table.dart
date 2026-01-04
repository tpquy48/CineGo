import 'package:drift/drift.dart';

class Bookings extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get movieId => integer()(); // TMDB movieId
  TextColumn get showtimeId => text()();

  TextColumn get seats => text()(); // JSON string
  TextColumn get foods => text()(); // JSON string

  IntColumn get totalPrice => integer()();
  DateTimeColumn get createdAt => dateTime()();
}
