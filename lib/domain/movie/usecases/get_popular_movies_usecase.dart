import '../entities/movie_entity.dart';
import '../repositories/movie_repository.dart';

class GetPopularMoviesUsecase {
  final MovieRepository _repository;

  GetPopularMoviesUsecase(this._repository);

  Future<List<MovieEntity>> call() async {
    return await _repository.getPopularMovies();
  }
}
