// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../dtos/genre_dto.dart';

part 'genre_response.freezed.dart';
part 'genre_response.g.dart';

@freezed
sealed class GenreResponse with _$GenreResponse {
  const factory GenreResponse({required List<GenreDto> genres}) = _GenreResponse;

  factory GenreResponse.fromJson(Map<String, dynamic> json) => _$GenreResponseFromJson(json);
}
