import '../../../../../core/bloc/base_state.dart';

abstract class SeatSelectionState extends BaseState {}

class SeatSelectionInitial extends SeatSelectionState {}

class SeatSelectionLoading extends SeatSelectionState {}

class SeatSelectionLoaded extends SeatSelectionState {
  final List<String> lockedSeats;
  SeatSelectionLoaded(this.lockedSeats);

  @override
  List<Object?> get props => [lockedSeats];
}

class SeatSelectionError extends SeatSelectionState {
  final String message;
  SeatSelectionError(this.message);

  @override
  List<Object?> get props => [message];
}
