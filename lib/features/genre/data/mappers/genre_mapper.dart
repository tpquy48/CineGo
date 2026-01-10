import '../../domain/entities/genre_entity.dart';
import '../dtos/genre_dto.dart';

extension GenreMapper on GenreDto {
  GenreEntity toEntity() {
    return GenreEntity(id: id, name: name);
  }
}
