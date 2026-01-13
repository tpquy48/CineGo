import 'package:flutter_bloc/flutter_bloc.dart';

import '../../enums/seat_stage.dart';
import 'seat_selection_state.dart';

class SeatSelectionCubit extends Cubit<SeatSelectionState> {
  SeatSelectionCubit() : super(const SeatSelectionState());

  void toggleSeat(String id) {
    final current = List<String>.from(state.selectedSeatIds);

    if (current.contains(id)) {
      current.remove(id);
    } else {
      current.add(id);
    }

    emit(
      state.copyWith(
        selectedSeatIds: current,
        stage: current.isEmpty ? SeatStage.selecting : SeatStage.selected,
      ),
    );
  }

  void toggleZoom() {
    emit(state.copyWith(zoomed: !state.zoomed));
  }

  void clearSelection() {
    emit(const SeatSelectionState());
  }
}
