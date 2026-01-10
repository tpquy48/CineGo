import '../entities/genre_entity.dart';
import '../repositories/genre_repository.dart';

class GetGenresUsecase {
  final GenreRepository _repository;

  GetGenresUsecase(this._repository);

  Future<List<GenreEntity>> call() async {
    return await _repository.getGenres();
  }
}
