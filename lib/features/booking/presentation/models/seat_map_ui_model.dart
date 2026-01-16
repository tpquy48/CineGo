import 'seat_ui_model.dart';

class SeatMapUiModel {
  final String showtimeId;
  final int rows;
  final int cols;
  final List<SeatUiModel> seats;

  const SeatMapUiModel({
    required this.showtimeId,
    required this.rows,
    required this.cols,
    required this.seats,
  });
}
