// import 'package:drift/drift.dart';

// import '../../../../../core/database/database.dart';

// abstract class SeatLockLocalDatasource {
//   Future<Set<String>> getLockedSeatIds(String showtimeId);
//   Future<void> lockSeats(String showtimeId, List<String> seatIds);
//   Future<void> unlockSeats(String showtimeId, List<String> seatIds);
// }

// class SeatLockLocalDatasourceImpl implements SeatLockLocalDatasource {
//   final AppDatabase db;

//   SeatLockLocalDatasourceImpl(this.db);

//   @override
//   Future<Set<String>> getLockedSeatIds(String showtimeId) async {
//     final rows = await (db.select(
//       db.seatLocksTable,
//     )..where((t) => t.showtimeId.equals(showtimeId))).get();

//     return rows.map((e) => e.seatId).toSet();
//   }

//   @override
//   Future<void> lockSeats(String showtimeId, List<String> seatIds) async {
//     await db.batch((batch) {
//       for (final id in seatIds) {
//         batch.insert(
//           db.seatLocksTable,
//           SeatLocksTableCompanion.insert(
//             seatId: id,
//             showtimeId: showtimeId,
//             lockedAt: DateTime.now(),
//           ),
//           mode: InsertMode.insertOrIgnore,
//         );
//       }
//     });
//   }

//   @override
//   Future<void> unlockSeats(String showtimeId, List<String> seatIds) async {
//     await (db.delete(db.seatLocksTable)..where(
//           (t) => t.showtimeId.equals(showtimeId) & t.seatId.isIn(seatIds),
//         ))
//         .go();
//   }
// }
