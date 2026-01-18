import 'package:drift/drift.dart';

class TicketsTable extends Table {
  TextColumn get ticketId => text()();

  /// FK → BookingsTable
  TextColumn get bookingId => text()();

  /// FK → SeatsTable
  TextColumn get seatId => text()();

  /// Snapshot price (VERY important)
  IntColumn get price => integer()();

  /// When ticket is officially issued
  DateTimeColumn get issuedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {ticketId};
}

// class TicketsTable extends Table {
//   IntColumn get id => integer().autoIncrement()();

//   IntColumn get movieId => integer()();
//   TextColumn get showtimeId => text()();

//   TextColumn get seats => text()();
//   DateTimeColumn get issuedAt => dateTime()();
// }
