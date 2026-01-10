import 'dart:convert';
import 'package:flutter/services.dart';

import '../../../../../core/core.dart';
import '../../models/cinema_model.dart';
import '../../models/showtime_model.dart';

class SessionsMockDatasource {
  Future<List<CinemaModel>> _loadCinemas() async {
    final raw = await rootBundle.loadString(MockApi.getPath('cinemas_2.json'));

    final list = jsonDecode(raw) as List;
    return list.map((e) => CinemaModel.fromJson(e)).toList();
  }

  Future<List<ShowtimeModel>> _loadShowtimes() async {
    final raw = await rootBundle.loadString(
      MockApi.getPath('showtimes_2.json'),
    );
    final list = jsonDecode(raw) as List;
    return list.map((e) => ShowtimeModel.fromJson(e)).toList();
  }

  Future<Map<CinemaModel, List<ShowtimeModel>>> getSessions({
    required int movieId,
    required DateTime date,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final cinemas = await _loadCinemas();
    final showtimes = await _loadShowtimes();

    final dateStr = date.toIso8601String().substring(0, 10);

    final filtered = showtimes.where(
      (s) => s.movieId == movieId && s.date == dateStr,
    );

    final Map<int, List<ShowtimeModel>> grouped = {};

    // for (final s in filtered) {
    for (final s in showtimes) {
      grouped.putIfAbsent(s.cinemaId, () => []).add(s);
    }

    return {
      for (final cinema in cinemas)
        if (grouped.containsKey(cinema.id)) cinema: grouped[cinema.id]!,
    };
  }
}

// import '../../../domain/entities/cinema_entity.dart';

// class SessionsMockDatasource {
//   Future<List<CinemaEntity>> getSessions() async {
//     final cinemas = await loadJson('cinemas.json');
//     final showtimes = await loadJson('showtimes.json');

//     await Future.delayed(const Duration(milliseconds: 400));
//     return demoCinemas; // your existing fake data
//   }
// }
