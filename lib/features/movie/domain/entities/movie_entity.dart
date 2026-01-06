class MovieEntity {
  final int id;
  final String title;
  final String overview;
  final List<int> genreIds;
  final List<String> genreNames;
  final String posterPath;
  final double voteAverage;
  final String releaseDate;

  MovieEntity({
    required this.id,
    required this.title,
    required this.overview,
    required this.genreIds,
    required this.genreNames,
    required this.posterPath,
    required this.voteAverage,
    required this.releaseDate,
  });
}
