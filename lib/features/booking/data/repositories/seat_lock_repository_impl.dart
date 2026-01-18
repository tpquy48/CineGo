import 'package:drift/drift.dart';

import '../../../../core/database/app_database.dart';
import '../../domain/repositories/seat_lock_repository.dart';

class SeatLockRepositoryImpl implements SeatLockRepository {
  final AppDatabase db;

  SeatLockRepositoryImpl(this.db);

  @override
  Future<Set<String>> getLockedSeatIds(String showtimeId) async {
    final rows = await (db.select(
      db.seatLocksTable,
    )..where((tbl) => tbl.showtimeId.equals(showtimeId))).get();

    return rows.map((e) => e.seatId).toSet();
  }

  @override
  Future<void> lockSeats(String showtimeId, List<String> seatIds) async {
    await db.batch((batch) {
      for (final id in seatIds) {
        batch.insert(
          db.seatLocksTable,
          SeatLocksTableCompanion.insert(
            seatId: id,
            showtimeId: showtimeId,
            lockedAt: DateTime.now(),
          ),
          mode: InsertMode.insertOrIgnore,
        );
      }
    });
  }

  @override
  Future<void> unlockSeats(String showtimeId, List<String> seatIds) async {
    await (db.delete(db.seatLocksTable)..where(
          (tbl) => tbl.showtimeId.equals(showtimeId) & tbl.seatId.isIn(seatIds),
        ))
        .go();
  }
}
