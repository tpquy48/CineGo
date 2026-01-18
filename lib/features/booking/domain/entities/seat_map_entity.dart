import 'seat_entity.dart';

class SeatMapEntity {
  final String showtimeId;
  final int rows;
  final int cols;
  final List<SeatEntity> seats;

  const SeatMapEntity({
    required this.showtimeId,
    required this.rows,
    required this.cols,
    required this.seats,
  });
}
