import '../../domain/entities/cinema_entity.dart';
import '../../domain/repositories/sessions_repository.dart';
import '../datasources/mock/sessions_mock_datasource.dart';
import '../mappers/session_mapper.dart';

class SessionsRepositoryImpl implements SessionsRepository {
  final SessionsMockDatasource datasource;

  SessionsRepositoryImpl(this.datasource);

  @override
  Future<List<CinemaEntity>> getSessions({
    required int movieId,
    required DateTime date,
  }) async {
    final data = await datasource.getSessions(movieId: movieId, date: date);

    return data.entries.map((e) => mapCinema(e.key, e.value)).toList();
  }
}
