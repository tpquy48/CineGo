import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/database/app_database.dart';

part 'seat_model.freezed.dart';
part 'seat_model.g.dart';

@freezed
sealed class SeatModel with _$SeatModel {
  const factory SeatModel({
    required String id,
    required String row,
    required int number,
    required int price,
  }) = _SeatModel;

  factory SeatModel.fromDrift(SeatsTableData row) {
    return SeatModel(
      id: row.id,
      row: row.row,
      number: row.number,
      price: row.price,
    );
  }

  factory SeatModel.fromJson(Map<String, dynamic> json) =>
      _$SeatModelFromJson(json);
}
