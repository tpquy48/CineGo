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

  // /// Confirm selection -> lock seats
  // Future<void> confirmSelection(String showtimeId) async {
  //   if (state.selectedSeatIds.isEmpty) {
  //     return;
  //   }

  //   emit(
  //     state.copyWith(confirmSelectionStage: ConfirmSelectionStage.confirming),
  //   );

  //   try {
  //     await lockSeats(
  //       showtimeId: showtimeId,
  //       seatIds: state.selectedSeatIds.toList(),
  //     );

  //     emit(
  //       state.copyWith(
  //         confirmSelectionStage: ConfirmSelectionStage.confirmed,
  //         selectedSeatIds: {},
  //       ),
  //     );
  //   } catch (e) {
  //     emit(
  //       state.copyWith(
  //         confirmSelectionStage: ConfirmSelectionStage.selecting,
  //         error: 'Failed to lock seats',
  //       ),
  //     );
  //   }
  // }
}
