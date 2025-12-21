import '../../env.dart';

class Movie {
  final int id;
  final String title;
  final String posterPath;
  final String backdropPath;
  final double voteAverage;
  final String overview;

  Movie({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.backdropPath,
    required this.voteAverage,
    required this.overview,
  });

  // Converts from API JSON to Movie object in Flutter
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'] ?? '',
      posterPath: '${Env.imageBaseUrl}/t/p/w500${json['poster_path']}',
      backdropPath: '${Env.imageBaseUrl}/t/p/w1280${json['backdrop_path']}',
      voteAverage: (json['vote_average'] as num).toDouble(),
      overview: json['overview'] ?? '',
    );
  }
}
