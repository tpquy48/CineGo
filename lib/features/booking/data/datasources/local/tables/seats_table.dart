import 'package:drift/drift.dart';

class SeatsTable extends Table {
  TextColumn get id => text()(); // A1, B2...
  TextColumn get showtimeId => text()(); // layout theo suất chiếu

  TextColumn get row => text()();
  IntColumn get number => integer()();
  IntColumn get price => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
