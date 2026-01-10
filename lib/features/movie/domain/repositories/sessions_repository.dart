import '../entities/cinema_entity.dart';

abstract class SessionsRepository {
  Future<List<CinemaEntity>> getSessions({
    required int movieId,
    required DateTime date,
  });
}
