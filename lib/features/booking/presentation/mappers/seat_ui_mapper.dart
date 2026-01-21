import '../../domain/entities/seat_entity.dart';
import '../../domain/entities/seat_map_entity.dart';
import '../models/seat_map_ui_model.dart';
import '../models/seat_ui_model.dart';

class SeatUiMapper {
  static SeatUiModel from({
    required SeatEntity seat,
    required Set<String> lockedSeatIds,
    required Set<String> selectedSeatIds,
  }) {
    return SeatUiModel(
      id: seat.id,
      row: seat.row,
      number: seat.number,
      price: seat.price,
      isLocked: lockedSeatIds.contains(seat.id),
      isSelected: selectedSeatIds.contains(seat.id),
    );
  }

  static SeatMapUiModel fromSeatMapEntity({
    required SeatMapEntity entity,
    required Set<String> lockedSeatIds,
    required Set<String> selectedSeatIds,
  }) {
    return SeatMapUiModel(
      showtimeId: entity.showtimeId,
      rows: entity.rows,
      cols: entity.cols,
      seats: entity.seats.map((seat) {
        return from(
          seat: seat,
          lockedSeatIds: lockedSeatIds,
          selectedSeatIds: selectedSeatIds,
        );
      }).toList(),
    );
  }

  static List<SeatEntity> toSeatEntities(List<SeatUiModel> models) {
    return models.map((model) {
      return SeatEntity(
        id: model.id,
        row: model.row,
        number: model.number,
        price: model.price,
      );
    }).toList();
  }
}
