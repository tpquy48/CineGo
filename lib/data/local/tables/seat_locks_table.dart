import 'package:drift/drift.dart';

class SeatLocks extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get showtimeId => text().unique()();
  TextColumn get lockSeats => text()(); // JSON: ["A1", "B3"]
}
