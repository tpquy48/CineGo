// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeatModel _$SeatModelFromJson(Map<String, dynamic> json) => _SeatModel(
  id: json['id'] as String,
  row: json['row'] as String,
  number: (json['number'] as num).toInt(),
  price: (json['price'] as num).toInt(),
);

Map<String, dynamic> _$SeatModelToJson(_SeatModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'row': instance.row,
      'number': instance.number,
      'price': instance.price,
    };
