import '../../domain/entities/seat_entity.dart';
import '../../domain/entities/seat_map_entity.dart';
import '../models/seat_map_model.dart';
import '../models/seat_model.dart';

class SeatMapper {
  static SeatEntity toSeatEntity(SeatModel model) {
    return SeatEntity(
      id: model.id,
      row: model.row,
      number: model.number,
      price: model.price,
    );
  }

  static List<SeatEntity> toEntityList(List<SeatModel> models) {
    return models.map(toSeatEntity).toList();
  }

  static SeatMapEntity toSeatMapEntity(SeatMapModel model) {
    return SeatMapEntity(
      showtimeId: model.showtimeId,
      rows: model.rows,
      cols: model.cols,
      seats: toEntityList(model.seats),
    );
  }

  // static SeatEntity toEntityFromGeneratedData(SeatModel model) {
  //   final row = String.fromCharCode(65 + model.row);
  //   final col = model.number + 1;

  //   return SeatEntity(
  //     id: '$row$col',
  //     row: row,
  //     number: col,
  //     price: model.price,
  //   );
  // }
}

// For generated seats from row/col index
// extension SeatMapper on SeatModel {
//   static SeatEntity toEntity(SeatModel dto) {
//     final row = String.fromCharCode(65 + dto.rowIndex);
//     final col = dto.colIndex + 1;

//     return SeatEntity(
//       seatId: '$row$col',
//       row: row,
//       column: col,
//       type: SeatType.values.byName(dto.type),
//     );
//   }

//   static SeatModel fromIndex({required int rowIndex, required int colIndex}) {
//     return SeatModel(rowIndex: rowIndex, colIndex: colIndex, type: 'regular');
//   }
// }
