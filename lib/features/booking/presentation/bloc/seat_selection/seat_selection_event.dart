import '../../../../../core/bloc/bloc.dart';

abstract class SeatSelectionEvent extends BaseEvent {}

class LoadLockSeatsEvent extends SeatSelectionEvent {
  final String showtimeId;
  LoadLockSeatsEvent(this.showtimeId);

  @override
  List<Object?> get props => [showtimeId];
}

class LockSeatsEvent extends SeatSelectionEvent {
  final String showtimeId;
  final List<String> seats;
  LockSeatsEvent({required this.showtimeId, required this.seats});

  @override
  List<Object?> get props => [showtimeId, seats];
}

class UnlockSeatsEvent extends SeatSelectionEvent {
  final String showtimeId;
  final List<String> seats;
  UnlockSeatsEvent({required this.showtimeId, required this.seats});

  @override
  List<Object?> get props => [showtimeId, seats];
}
