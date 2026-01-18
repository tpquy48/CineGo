import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_locked_seats_usecase.dart';
import '../../../domain/usecases/get_seat_map_usecase.dart';
import '../../../domain/usecases/lock_seats_usecase.dart';
import '../../mappers/seat_ui_mapper.dart';
import 'seat_selection_state.dart';

class SeatSelectionCubit extends Cubit<SeatSelectionState> {
  final GetSeatMapUseCase getSeatMap;
  final GetLockedSeatsUseCase getLockedSeats;
  final LockSeatsUseCase lockSeats;

  SeatSelectionCubit({
    required this.getSeatMap,
    required this.getLockedSeats,
    required this.lockSeats,
  }) : super(SeatSelectionState.initial());

  /// Load seats + locked seats
  Future<void> loadSeatMap(String showtimeId) async {
    emit(state.copyWith(isLoading: true));

    try {
      final seatMap = await getSeatMap(showtimeId);
      final lockedIds = await getLockedSeats(showtimeId);

      final seatMapUiModel = SeatUiMapper.fromSeatMapEntity(
        entity: seatMap,
        lockedSeatIds: lockedIds,
        selectedSeatIds: state.selectedSeatIds,
      );

      // final seatUiModels = seats.map((seat) {
      //   return SeatUiMapper.from(
      //     seat: seat,
      //     lockedSeatIds: lockedIds.toSet(),
      //     selectedSeatIds: state.selectedSeatIds,
      //   );
      // }).toList();

      // emit(state.copyWith(seats: seatUiModels, isLoading: false));
      emit(state.copyWith(seatMap: seatMapUiModel, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  /// Tap seat (pure logic)
  void toggleSeat(String seatId) {
    final selected = Set<String>.from(state.selectedSeatIds);

    if (selected.contains(seatId)) {
      selected.remove(seatId);
    } else {
      selected.add(seatId);
    }

    emit(state.copyWith(selectedSeatIds: selected));
  }

  /// Confirm selection -> lock seats
  Future<void> confirmSelection(String showtimeId) async {
    if (state.selectedSeatIds.isEmpty) {
      return;
    }

    emit(state.copyWith(isConfirming: true));

    try {
      await lockSeats(showtimeId, state.selectedSeatIds.toList());

      emit(state.copyWith(isConfirming: false, selectedSeatIds: {}));
    } catch (e) {
      emit(state.copyWith(isConfirming: false, error: 'Failed to lock seats'));
    }
  }
}
