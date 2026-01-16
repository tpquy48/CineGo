class CinemaModel {
  final String id;
  final String name;
  final String address;
  final String distance;

  CinemaModel({
    required this.id,
    required this.name,
    required this.address,
    required this.distance,
  });

  factory CinemaModel.fromJson(Map<String, dynamic> json) {
    return CinemaModel(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      distance: json['distance'],
    );
  }
}

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'cinema_model.freezed.dart';
// part 'cinema_model.g.dart';

// @freezed
// sealed class CinemaModel with _$CinemaModel {
//   const factory CinemaModel({
//     required int id,
//     required String name,
//     required String address,
//     required String distance,
//   }) = _CinemaModel;

//   factory CinemaModel.fromJson(Map<String, dynamic> json) =>
//       _$CinemaModelFromJson(json);
// }
