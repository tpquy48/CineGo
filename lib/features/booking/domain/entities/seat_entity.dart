enum SeatType { regular, vip, couple }

class SeatEntity {
  final String seatId; // A1
  final String row; // A
  final int column; // 1
  final SeatType type;

  const SeatEntity({
    required this.seatId,
    required this.row,
    required this.column,
    required this.type,
  });
}
