import '../../domain/entities/seat_entity.dart';
import '../../domain/entities/seat_map_entity.dart';
import '../../domain/repositories/seat_repository.dart';
import '../datasources/local/seat_local_datasource.dart';
import '../datasources/mock/seat_mock_datasource.dart';
import '../mappers/seat_mapper.dart';

class SeatRepositoryImpl implements SeatRepository {
  final SeatLocalDatasource localDatasource;
  final SeatMockDatasource mockDatasource;

  SeatRepositoryImpl({
    required this.localDatasource,
    required this.mockDatasource,
  });

  @override
  Future<SeatMapEntity> getSeatMap(String showtimeId) async {
    // final models = await localDatasource.getSeatsByShowtime(showtimeId);
    // final models = await localDatasource.getMockGeneratedSeats(showtimeId);
    final model = await mockDatasource.loadSeatMap(showtimeId);

    // return models.map(SeatMapper.toEntity).toList();
    // return SeatMapper.toEntityList(models);
    return SeatMapper.toSeatMapEntity(model);
  }
}
