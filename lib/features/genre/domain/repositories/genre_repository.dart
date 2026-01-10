import '../entities/genre_entity.dart';

abstract class GenreRepository {
  Future<List<GenreEntity>> getGenres();
}
