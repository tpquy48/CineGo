import '../../../../../core/bloc/base_state.dart';

sealed class SeatMapState extends BaseState {}

class SeatMapInitial extends SeatMapState {}

class SeatMapLoading extends SeatMapState {}

class SeatMapLoaded extends SeatMapState {
  // final List<String> lockedSeats;
  final List<String> lockedSeatIds;
  SeatMapLoaded(this.lockedSeatIds);

  @override
  List<Object?> get props => [lockedSeatIds];
}

class SeatMapError extends SeatMapState {
  final String message;
  SeatMapError(this.message);

  @override
  List<Object?> get props => [message];
}
