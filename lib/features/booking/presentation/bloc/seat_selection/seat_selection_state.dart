import '../../../../../core/bloc/base_state.dart';
import '../../models/seat_map_ui_model.dart';
import '../../models/seat_ui_model.dart';

class SeatSelectionState extends BaseState {
  final SeatMapUiModel seatMap;
  // final List<SeatUiModel> seats;
  final Set<String> selectedSeatIds;
  final bool isLoading;
  final bool isConfirming;
  final String? error;

  const SeatSelectionState({
    required this.seatMap,
    // required this.seats,
    required this.selectedSeatIds,
    this.isLoading = false,
    this.isConfirming = false,
    this.error,
  });

  factory SeatSelectionState.initial() {
    return const SeatSelectionState(
      seatMap: SeatMapUiModel(showtimeId: '', rows: 0, cols: 0, seats: []),
      // seats: [],
      selectedSeatIds: {},
      isLoading: false,
      isConfirming: false,
    );
  }

  SeatSelectionState copyWith({
    SeatMapUiModel? seatMap,
    List<SeatUiModel>? seats,
    Set<String>? selectedSeatIds,
    bool? isLoading,
    bool? isConfirming,
    String? error,
  }) {
    return SeatSelectionState(
      seatMap: seatMap ?? this.seatMap,
      // seats: seats ?? this.seats,
      selectedSeatIds: selectedSeatIds ?? this.selectedSeatIds,
      isLoading: isLoading ?? this.isLoading,
      isConfirming: isConfirming ?? this.isConfirming,
      error: error,
    );
  }

  @override
  List<Object?> get props => [
    seatMap,
    // seats,
    selectedSeatIds,
    isLoading,
    isConfirming,
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
