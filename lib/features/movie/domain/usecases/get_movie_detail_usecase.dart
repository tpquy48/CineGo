import '../entities/movie_detail_entity.dart';
import '../repositories/movie_repository.dart';

class GetMovieDetailUsecase {
  final MovieRepository _repository;

  GetMovieDetailUsecase(this._repository);

  Future<MovieDetailEntity> call(String movieId) async {
    return await _repository.getMovieDetail(movieId);
  }
}
