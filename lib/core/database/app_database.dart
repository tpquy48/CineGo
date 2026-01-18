import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../features/booking/data/datasources/local/tables/bookings_table.dart';
import '../../features/booking/data/datasources/local/tables/seat_locks_table.dart';
import '../../features/booking/data/datasources/local/tables/seats_table.dart';
import '../../features/booking/data/datasources/local/tables/tickets_table.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [BookingsTable, SeatLocksTable, TicketsTable, SeatsTable],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'cinego.sqlite'));
    return NativeDatabase(file);
  });
}
