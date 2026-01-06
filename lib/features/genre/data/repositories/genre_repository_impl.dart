import 'dart:developer';

import '../../domain/entities/genre_entity.dart';
import '../../domain/repositories/genre_repository.dart';
import '../datasources/remote/genre_remote_datasource.dart';
import '../mappers/genre_mapper.dart';

class GenreRepositoryImpl extends GenreRepository {
  final GenreRemoteDatasource _remoteDatasource;

  GenreRepositoryImpl(this._remoteDatasource);

  @override
  Future<List<GenreEntity>> getGenres() async {
    try {
      final res = await _remoteDatasource.getGenres();
      final entities = res.genres.map((dto) => dto.toEntity()).toList();
      return entities;
    } catch (e) {
      log('Failed to fetch movies: $e');
      return [];
      // rethrow;
    }
  }
}
