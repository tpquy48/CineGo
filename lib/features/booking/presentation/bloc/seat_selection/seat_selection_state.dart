import '../../../../../core/bloc/base_state.dart';
import '../../enums/seat_stage.dart';

class SeatSelectionState extends BaseState {
  final List<String> selectedSeatIds;
  final SeatStage stage;
  final bool zoomed;

  const SeatSelectionState({
    this.selectedSeatIds = const [],
    this.stage = SeatStage.overview,
    this.zoomed = false,
  });

  SeatSelectionState copyWith({
    List<String>? selectedSeatIds,
    SeatStage? stage,
    bool? zoomed,
  }) {
    return SeatSelectionState(
      selectedSeatIds: selectedSeatIds ?? this.selectedSeatIds,
      stage: stage ?? this.stage,
      zoomed: zoomed ?? this.zoomed,
    );
  }

  @override
  List<Object?> get props => [selectedSeatIds, stage, zoomed];
}
