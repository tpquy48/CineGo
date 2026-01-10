import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/cinema_entity.dart';
import '../../domain/usecases/get_sessions_usecase.dart';
import 'sessions_state.dart';

class SessionsCubit extends Cubit<SessionsState> {
  final GetSessionsUsecase getSessions;

  final Map<_CacheKey, List<CinemaEntity>> _cache = {};

  SessionsCubit(this.getSessions) : super(SessionsLoading());

  @override
  void onChange(Change<SessionsState> change) {
    super.onChange(change);
    debugPrint(change.toString());
  }

  Future<void> load(int movieId, {DateTime? date}) async {
    final selectedDate = date ?? DateTime.now();
    final key = _CacheKey(movieId, selectedDate);

    // 1. Cache hit
    if (_cache.containsKey(key)) {
      emit(
        SessionsLoaded(
          cinemas: _cache[key]!,
          byCinema: true,
          timeAscending: true,
          selectedDate: selectedDate,
        ),
      );

      return;
    }

    // 2. Cache miss
    emit(SessionsLoading());

    try {
      final cinemas = await getSessions(movieId: movieId, date: selectedDate);

      _cache[key] = cinemas;

      emit(
        SessionsLoaded(
          cinemas: cinemas,
          byCinema: true,
          timeAscending: true,
          selectedDate: selectedDate,
        ),
      );
    } catch (e) {
      emit(const SessionsError('Failed to load sessions'));
    }
  }

  void toggleByCinema() {
    final s = state as SessionsLoaded;
    emit(s.copyWith(byCinema: !s.byCinema));
    // emit(SessionsLoading());
  }

  void toggleTimeSort() {
    final s = state as SessionsLoaded;
    emit(s.copyWith(timeAscending: !s.timeAscending));
  }

  void changeDate(DateTime date) {
    final current = state;
    if (current is! SessionsLoaded) {
      return;
    }

    final normalized = _normalize(date);
    final key = _CacheKey(1, normalized);

    if (_cache.containsKey(key)) {
      emit(current.copyWith(cinemas: _cache[key], selectedDate: normalized));
      return;
    }

    load(1, date: normalized);
  }

  DateTime _normalize(DateTime d) => DateTime(d.year, d.month, d.day);
}

@immutable
class _CacheKey {
  final int movieId;
  final DateTime date; // normalized (yyyy-mm-dd)

  const _CacheKey(this.movieId, this.date);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _CacheKey && movieId == other.movieId && date == other.date;

  @override
  int get hashCode => Object.hash(movieId, date);
}
