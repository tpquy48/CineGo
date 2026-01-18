import 'package:freezed_annotation/freezed_annotation.dart';

import 'seat_model.dart';

part 'seat_map_model.freezed.dart';
part 'seat_map_model.g.dart';

@freezed
sealed class SeatMapModel with _$SeatMapModel {
  const factory SeatMapModel({
    required String showtimeId,
    required int rows,
    required int cols,
    required List<SeatModel> seats,
  }) = _SeatMapModel;

  factory SeatMapModel.fromJson(Map<String, dynamic> json) =>
      _$SeatMapModelFromJson(json);
}
