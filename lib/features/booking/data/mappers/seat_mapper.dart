import '../../domain/entities/seat_entity.dart';
import '../models/seat_model.dart';

extension SeatMapper on SeatModel {
  static SeatEntity toEntity(SeatModel dto) {
    final row = String.fromCharCode(65 + dto.rowIndex);
    final col = dto.colIndex + 1;

    return SeatEntity(
      seatId: '$row$col',
      row: row,
      column: col,
      type: SeatType.values.byName(dto.type),
    );
  }

  static SeatModel fromIndex({required int rowIndex, required int colIndex}) {
    return SeatModel(rowIndex: rowIndex, colIndex: colIndex, type: 'regular');
  }
}
