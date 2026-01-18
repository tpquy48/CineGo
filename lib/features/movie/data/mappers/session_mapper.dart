import '../../domain/entities/cinema_entity.dart';
import '../../domain/entities/session_entity.dart';
import '../models/cinema_model.dart';
import '../models/showtime_model.dart';

CinemaEntity mapCinema(CinemaModel cinema, List<ShowtimeModel> showtimes) {
  return CinemaEntity(
    name: cinema.name,
    address: cinema.address,
    distance: cinema.distance,
    sessions: showtimes
        .map(
          (s) => SessionEntity(
            showtimeId: s.id,
            movieId: s.movieId,
            cinemaId: s.cinemaId,
            time: s.time,
            format: s.format,
            prices: s.prices.map((k, v) => MapEntry(k, v ?? '•')),
          ),
        )
        .toList(),
  );
}
