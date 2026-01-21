import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/database/app_database.dart';
import '../../../../core/error/database_failure.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repositories/seat_lock_repository.dart';
import '../../domain/results/seat_lock_result.dart';

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
  Future<Either<Failure, SeatLockResult>> lockSeats(
    String showtimeId,
    List<String> seatIds,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));

    try {
      final now = DateTime.now();
      final lockId = const Uuid().v4();

      await db.batch((batch) {
        for (final seatId in seatIds) {
          batch.insert(
            db.seatLocksTable,
            SeatLocksTableCompanion.insert(
              seatId: seatId,
              showtimeId: showtimeId,
              lockId: lockId,
              lockedAt: now,
            ),
            mode: InsertMode.insertOrIgnore,
          );
        }
      });

      return Right(
        SeatLockResult(
          lockId: lockId,
          expiresAt: now.add(const Duration(minutes: 10)),
        ),
      );
    } catch (e, s) {
      return Left(
        DatabaseFailure(
          message: 'Failed to lock seats',
          exception: e,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> unlockSeats(String lockId) async {
    try {
      await (db.delete(
        db.seatLocksTable,
      )..where((tbl) => tbl.lockId.equals(lockId))).go();
      return const Right(null);
    } catch (e, s) {
      return Left(
        DatabaseFailure(
          message: 'Failed to unlock seats',
          exception: e,
          stackTrace: s,
        ),
      );
    }
  }
}
