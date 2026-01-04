import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/booking/booking_usecases.dart';
import 'seat_selection_event.dart';
import 'seat_selection_state.dart';

class SeatSelectionBloc extends Bloc<SeatSelectionEvent, SeatSelectionState> {
  final GetLockedSeatsUsecase getLockedSeats;
  final LockSeatsUsecase lockSeats;
  final UnlockSeatsUsecase unlockSeats;

  SeatSelectionBloc({
    required this.getLockedSeats,
    required this.lockSeats,
    required this.unlockSeats,
  }) : super(SeatSelectionInitial()) {
    // Register event handler for an event of type E. There should only ever
    // be one event handler per event type E.
    on<LoadLockSeatsEvent>(_loadLockedSeats);
    on<LockSeatsEvent>(_lockSeats);
    on<UnlockSeatsEvent>(_unloadLockSeats);
  }

  Future<void> _loadLockedSeats(LoadLockSeatsEvent event, Emitter<SeatSelectionState> emit) async {
    emit(SeatSelectionLoading());

    try {
      final seats = await getLockedSeats(event.showtimeId);
      emit(SeatSelectionLoaded(List.unmodifiable(seats)));
    } catch (e) {
      emit(SeatSelectionError(e.toString()));
    }
  }

  Future<void> _lockSeats(LockSeatsEvent event, Emitter<SeatSelectionState> emit) async {
    await lockSeats.call(showtimeId: event.showtimeId, seats: event.seats);

    final updated = await getLockedSeats(event.showtimeId);
    emit(SeatSelectionLoaded(List.unmodifiable(updated)));
  }

  Future<void> _unloadLockSeats(UnlockSeatsEvent event, Emitter<SeatSelectionState> emit) async {
    await unlockSeats.call(showtimeId: event.showtimeId, seats: event.seats);

    final updated = await getLockedSeats(event.showtimeId);
    emit(SeatSelectionLoaded(List.unmodifiable(updated)));
  }
}
