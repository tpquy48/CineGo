import '../../mappers/seat_mapper.dart';
import '../../models/seat_model.dart';

class SeatLocalDatasource {
  static const rows = 8;
  static const cols = 11;

  List<SeatModel> getSeats() {
    return List.generate(
      rows * cols,
      (i) => SeatMapper.fromIndex(rowIndex: i ~/ cols, colIndex: i % cols),
    );
  }

  final Map<String, List<String>> _lockedSeatsTable = {
    'showtime_1': ['R1-S2', 'R2-S5', 'R3-S6'],
  };

  // Future<List<SeatModel>> getSeats() async {
  //   await Future.delayed(const Duration(milliseconds: 200));
  //   return List.unmodifiable(_seatTable);
  // }

  Future<List<String>> getLockedSeatIds(String showtimeId) async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _lockedSeatsTable[showtimeId] ?? [];
  }
}
