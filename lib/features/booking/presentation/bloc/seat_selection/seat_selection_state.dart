import '../../../../../core/bloc/base_state.dart';
import '../../models/seat_map_ui_model.dart';
import '../../models/seat_ui_model.dart';

enum ConfirmSelectionStage { selecting, confirming, confirmed }

class SeatSelectionState extends BaseState {
  final SeatMapUiModel seatMap;
  final Set<String> selectedSeatIds;
  final bool isLoading;
  final ConfirmSelectionStage confirmSelectionStage;
  final String? error;

  const SeatSelectionState({
    required this.seatMap,
    required this.selectedSeatIds,
    this.isLoading = false,
    this.confirmSelectionStage = ConfirmSelectionStage.selecting,
    this.error,
  });

  factory SeatSelectionState.initial() {
    return const SeatSelectionState(
      seatMap: SeatMapUiModel(showtimeId: '', rows: 0, cols: 0, seats: []),
      // seats: [],
      selectedSeatIds: {},
      isLoading: false,
      confirmSelectionStage: ConfirmSelectionStage.selecting,
    );
  }

  SeatSelectionState copyWith({
    SeatMapUiModel? seatMap,
    List<SeatUiModel>? seats,
    Set<String>? selectedSeatIds,
    bool? isLoading,
    ConfirmSelectionStage? confirmSelectionStage,
    String? error,
  }) {
    return SeatSelectionState(
      seatMap: seatMap ?? this.seatMap,
      selectedSeatIds: selectedSeatIds ?? this.selectedSeatIds,
      isLoading: isLoading ?? this.isLoading,
      confirmSelectionStage:
          confirmSelectionStage ?? this.confirmSelectionStage,
      error: error,
    );
  }

  @override
  List<Object?> get props => [
    seatMap,
    selectedSeatIds,
    isLoading,
    confirmSelectionStage,
    error,
  ];
}

extension SeatSelectionStateX on SeatSelectionState {
  int get totalPrice {
    // Assuming each seat has a price property
    return seatMap.seats
        .where((seat) => selectedSeatIds.contains(seat.id))
        .fold(0, (sum, seat) => sum + seat.price);
  }
}
