import '../../features/genre/domain/usecases/get_genres_usecase.dart';

sealed class GenreCache {
  Future<void> preload();
  String? getName(int it);
  bool get isReady;
}

class GenreCacheImpl implements GenreCache {
  GenreCacheImpl(this._getGenres);

  final GetGenresUsecase _getGenres;

  final Map<int, String> _genreMap = {};

  bool _loaded = false;

  @override
  bool get isReady => _loaded;

  @override
  Future<void> preload() async {
    if (_loaded) {
      return;
    }

    final genres = await _getGenres();
    if (genres.isEmpty) {
      return;
    }

    for (final genre in genres) {
      _genreMap[genre.id] = genre.name;
    }
    _loaded = true;
  }

  @override
  String? getName(int genreId) {
    return _genreMap[genreId];
  }
}
