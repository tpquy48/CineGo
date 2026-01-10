import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_ui_model.freezed.dart';

@freezed
sealed class MovieDetailUiModel with _$MovieDetailUiModel {
  const factory MovieDetailUiModel({
    required int id,

    // Header
    required String title,
    required String backdropUrl,
    required String posterUrl,

    // Ratings
    required String imdbScore,
    required String kinopoiskScore,

    // About
    required String overview,
    required String ageRating,
    required String runtime,
    required String releaseYear,
    required String genres,

    // CTA
    required bool canSelectSession,
  }) = _MovieDetailUiModel;
}
