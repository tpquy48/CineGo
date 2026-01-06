// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenreResponse _$GenreResponseFromJson(Map<String, dynamic> json) =>
    _GenreResponse(
      genres: (json['genres'] as List<dynamic>)
          .map((e) => GenreDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GenreResponseToJson(_GenreResponse instance) =>
    <String, dynamic>{'genres': instance.genres};
