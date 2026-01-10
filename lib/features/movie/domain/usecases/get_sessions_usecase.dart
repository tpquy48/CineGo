import '../entities/cinema_entity.dart';
import '../repositories/sessions_repository.dart';

class GetSessionsUsecase {
  final SessionsRepository repository;

  GetSessionsUsecase(this.repository);

  Future<List<CinemaEntity>> call({
    required int movieId,
    required DateTime date,
  }) {
    return repository.getSessions(movieId: movieId, date: date);
  }
}
