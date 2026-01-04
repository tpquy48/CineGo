import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../../core/database/database.dart';

class SeatLockLocalDatasource {
  final AppDatabase db;

  SeatLockLocalDatasource(this.db);

  // Get locked seats for a showtime
  Future<List<String>> getLockedSeats(String showtimeId) async {
    final query = db.select(db.seatLocks)..where((tbl) => tbl.showtimeId.equals(showtimeId));
    final record = await query.getSingleOrNull();
    if (record == null) {
      return [];
    }
    return List<String>.from(jsonDecode(record.lockedSeats));
  }

  // Lock seats (used when user selects seats)
  Future<void> lockSeats(String showtimeId, List<String> seats) async {
    final existing = await getLockedSeats(showtimeId);
    final updated = {...existing, ...seats}.toList();

    await db
        .into(db.seatLocks)
        .insertOnConflictUpdate(
          SeatLocksCompanion(
            showtimeId: Value(showtimeId),
            lockedSeats: Value(jsonEncode(updated)),
          ),
        );
  }

  // Unlock seats (used on cancel / timeout)
  Future<void> unlockSeats(String showtimeId, List<String> seats) async {
    final existing = await getLockedSeats(showtimeId);
    final updated = existing..removeWhere(seats.contains);

    await (db.update(db.seatLocks)..where((tbl) => tbl.showtimeId.equals(showtimeId))).write(
      SeatLocksCompanion(lockedSeats: Value(jsonEncode(updated))),
    );
  }
}
