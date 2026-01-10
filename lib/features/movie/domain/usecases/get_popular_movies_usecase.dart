import '../entities/movie_entity.dart';
import '../repositories/movie_repository.dart';

class GetPopularMoviesUsecase {
  final MovieRepository _repository;

  GetPopularMoviesUsecase(this._repository);

  Future<List<MovieEntity>> call({required int page}) async {
    return await _repository.getPopularMovies(page: page);
  }
}
