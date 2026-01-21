import 'package:drift/drift.dart';

class SeatLocksTable extends Table {
  TextColumn get seatId => text()();
  TextColumn get showtimeId => text()();
  DateTimeColumn get lockedAt => dateTime()();
  TextColumn get lockId => text()();

  @override
  Set<Column> get primaryKey => {seatId, showtimeId};
}
