import 'package:drift/drift.dart';

class TicketsTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get movieId => integer()();
  TextColumn get showtimeId => text()();

  TextColumn get seats => text()();
  DateTimeColumn get issuedAt => dateTime()();
}
