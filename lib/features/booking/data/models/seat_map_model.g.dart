// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_map_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeatMapModel _$SeatMapModelFromJson(Map<String, dynamic> json) =>
    _SeatMapModel(
      showtimeId: json['showtimeId'] as String,
      rows: (json['rows'] as num).toInt(),
      cols: (json['cols'] as num).toInt(),
      seats: (json['seats'] as List<dynamic>)
          .map((e) => SeatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SeatMapModelToJson(_SeatMapModel instance) =>
    <String, dynamic>{
      'showtimeId': instance.showtimeId,
      'rows': instance.rows,
      'cols': instance.cols,
      'seats': instance.seats,
    };
