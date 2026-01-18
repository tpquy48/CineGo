import 'package:drift/drift.dart';

class BookingsTable extends Table {
  TextColumn get bookingId => text()();

  /// FK → ShowtimesTable
  TextColumn get showtimeId => text()();

  /// Denormalized for performance & history
  IntColumn get movieId => integer()();

  IntColumn get totalPrice => integer()();

  /// When user pressed "Confirm"
  DateTimeColumn get createdAt => dateTime()();

  /// When payment succeeded (nullable for now)
  DateTimeColumn get issuedAt => dateTime().nullable()();

  /// Booking lifecycle
  TextColumn get status => text().withDefault(const Constant('PENDING'))();

  @override
  Set<Column> get primaryKey => {bookingId};
}

// class BookingsTable extends Table {
//   TextColumn get id => text()(); // UUID

//   IntColumn get movieId => integer()(); // TMDB movieId
//   TextColumn get showtimeId => text()();

//   // TextColumn get seats => text()(); // JSON string
//   // TextColumn get foods => text()(); // JSON string

//   IntColumn get totalPrice => integer()();
//   DateTimeColumn get createdAt => dateTime()();
//   DateTimeColumn? get issuedAt => dateTime()();
// }
