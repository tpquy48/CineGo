import 'dart:math';

import '../../../../core/core.dart';
import '../../domain/entities/movie_detail_entity.dart';
import '../models/movie_detail_ui_model.dart';

extension MovieDetailUiMapper on MovieDetailEntity {
  MovieDetailUiModel toUiModel() {
    const double min = 6.9;
    const double max = 8.2;

    // Initialize the random generator
    final Random random = Random();

    // Calculate random value
    final double randomKinopoiskScore =
        min + (random.nextDouble() * (max - min));

    return MovieDetailUiModel(
      id: id,

      title: title,

      backdropUrl: Img.networkUrl(backdropPath)!,
      posterUrl: _imageUrl(posterPath),

      imdbScore: voteAverage.toStringAsFixed(1),
      kinopoiskScore: randomKinopoiskScore.toStringAsFixed(
        1,
      ), // mock / optional

      overview: overview,

      ageRating: adult ? '18+' : '16+',

      runtime: _formatRuntime(runtime),
      releaseYear: releaseDate?.split('-').first ?? '--',

      genres: genres.map((e) => e.name).join(', '),

      canSelectSession: status == 'Released',
    );
  }

  String _imageUrl(String? path) {
    if (path == null) return '';
    return 'https://image.tmdb.org/t/p/w780$path';
  }

  String _formatRuntime(int? minutes) {
    if (minutes == null) return '--';
    final h = minutes ~/ 60;
    final m = minutes % 60;
    return '${h.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')}';
  }
}
