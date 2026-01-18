import '../../../../../core/database/app_database.dart';
import '../../models/seat_model.dart';

abstract class SeatLocalDatasource {
  Future<List<SeatModel>> getSeatsByShowtime(String showtimeId);
  List<SeatModel> getMockGeneratedSeats(String showtimeId);
}

class SeatLocalDatasourceImpl implements SeatLocalDatasource {
  final AppDatabase db;

  SeatLocalDatasourceImpl(this.db);

  @override
  Future<List<SeatModel>> getSeatsByShowtime(String showtimeId) async {
    final rows = await db.select(db.seatsTable).get();
    return rows.map(SeatModel.fromDrift).toList();
  }

  // For testing UI
  static const rows = 8;
  static const cols = 11;
  @override
  List<SeatModel> getMockGeneratedSeats(String showtimeId) {
    return List.generate(
      rows * cols,
      // (i) => SeatModel(id: 'S$i', row: 'S', number: i, price: 120000),
      (i) => SeatModel(
        id: '${String.fromCharCode(65 + (i ~/ cols))}${(i % cols) + 1}',
        row: String.fromCharCode(65 + (i ~/ cols)),
        number: (i % cols) + 1,
        price: 120000,
      ),
    );
  }
}

// class SeatLocalDatasource {
//   static const rows = 8;
//   static const cols = 11;

//   List<SeatModel> getSeats() {
//     return List.generate(
//       rows * cols,
//       (i) => SeatMapper.fromIndex(rowIndex: i ~/ cols, colIndex: i % cols),
//     );
//   }

//   final Map<String, List<String>> _lockedSeatsTable = {
//     'showtime_1': ['R1-S2', 'R2-S5', 'R3-S6'],
//   };

//   // Future<List<SeatModel>> getSeats() async {
//   //   await Future.delayed(const Duration(milliseconds: 200));
//   //   return List.unmodifiable(_seatTable);
//   // }

//   Future<List<String>> getLockedSeatIds(String showtimeId) async {
//     await Future.delayed(const Duration(milliseconds: 200));
//     return _lockedSeatsTable[showtimeId] ?? [];
//   }
// }
