import 'package:drift/drift.dart';

class SeatLocksTable extends Table {
  TextColumn get seatId => text()();
  TextColumn get showtimeId => text()();
  DateTimeColumn get lockedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {seatId, showtimeId};
}
