import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/booking_usecases.dart';
import 'seat_map_event.dart';
import 'seat_map_state.dart';

class SeatMapBloc extends Bloc<SeatMapEvent, SeatMapState> {
  final GetLockedSeatsUsecase getLockedSeats;

  String? _showtimeId;

  SeatMapBloc(this.getLockedSeats) : super(SeatMapInitial()) {
    on<LoadSeatMapEvent>(_onLoad);
    on<RefreshSeatMapEvent>(_onRefresh);
  }

  Future<void> _onLoad(
    LoadSeatMapEvent event,
    Emitter<SeatMapState> emit,
  ) async {
    _showtimeId = event.showtimeId;
    emit(SeatMapLoading());

    try {
      final seats = await getLockedSeats(event.showtimeId);
      emit(SeatMapLoaded(List.unmodifiable(seats)));
    } catch (e) {
      emit(SeatMapError(e.toString()));
    }
  }

  Future<void> _onRefresh(
    RefreshSeatMapEvent event,
    Emitter<SeatMapState> emit,
  ) async {
    if (_showtimeId == null) return;

    final seats = await getLockedSeats(_showtimeId!);
    emit(SeatMapLoaded(List.unmodifiable(seats)));
  }
}

/* 
class SeatMapBloc extends Bloc<SeatMapEvent, SeatMapState> {
  final GetLockedSeatsUsecase getLockedSeats;
  final LockSeatsUsecase lockSeats;
  final UnlockSeatsUsecase unlockSeats;

  SeatMapBloc({
    required this.getLockedSeats,
    required this.lockSeats,
    required this.unlockSeats,
  }) : super(SeatMapInitial()) {
    // Register event handler for an event of type E. There should only ever
    // be one event handler per event type E.
    on<LoadLockSeatsEvent>(_loadLockedSeats);
    on<LockSeatsEvent>(_lockSeats);
    on<UnlockSeatsEvent>(_unloadLockSeats);
  }

  Future<void> _loadLockedSeats(
    LoadLockSeatsEvent event,
    Emitter<SeatMapState> emit,
  ) async {
    emit(SeatMapLoading());

    try {
      final seats = await getLockedSeats(event.showtimeId);
      emit(SeatMapLoaded(List.unmodifiable(seats)));
    } catch (e) {
      emit(SeatMapError(e.toString()));
    }
  }

  Future<void> _lockSeats(
    LockSeatsEvent event,
    Emitter<SeatMapState> emit,
  ) async {
    await lockSeats.call(showtimeId: event.showtimeId, seats: event.seats);

    final updated = await getLockedSeats(event.showtimeId);
    emit(SeatMapLoaded(List.unmodifiable(updated)));
  }

  Future<void> _unloadLockSeats(
    UnlockSeatsEvent event,
    Emitter<SeatMapState> emit,
  ) async {
    await unlockSeats.call(showtimeId: event.showtimeId, seats: event.seats);

    final updated = await getLockedSeats(event.showtimeId);
    emit(SeatMapLoaded(List.unmodifiable(updated)));
  }
}
 */
