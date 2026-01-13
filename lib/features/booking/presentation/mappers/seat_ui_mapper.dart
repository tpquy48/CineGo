import '../../domain/entities/seat_entity.dart';
import '../models/seat_ui_model.dart';

class SeatUiMapper {
  static SeatUiModel fromEntity(
    SeatEntity seat, {
    required bool blocked,
    required bool selected,
  }) {
    return SeatUiModel(
      seatId: seat.seatId,
      label: seat.column.toString(),
      isBlocked: blocked,
      isSelected: selected,
    );
  }
}
