class ShowtimeModel {
  final int id;
  final int movieId;
  final int cinemaId;
  final String date;
  final String time;
  final String format;
  final Map<String, String?> prices;

  ShowtimeModel({
    required this.id,
    required this.movieId,
    required this.cinemaId,
    required this.date,
    required this.time,
    required this.format,
    required this.prices,
  });

  factory ShowtimeModel.fromJson(Map<String, dynamic> json) {
    return ShowtimeModel(
      id: json['id'],
      movieId: json['movie_id'],
      cinemaId: json['cinema_id'],
      date: json['date'],
      time: json['time'],
      format: json['format'],
      prices: Map<String, String?>.from(json['prices']),
    );
  }
}
