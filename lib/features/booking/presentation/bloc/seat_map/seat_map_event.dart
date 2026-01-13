import '../../../../../core/bloc/bloc.dart';

sealed class SeatMapEvent extends BaseEvent {}

class LoadSeatMapEvent extends SeatMapEvent {
  final String showtimeId;
  LoadSeatMapEvent(this.showtimeId);

  @override
  List<Object?> get props => [showtimeId];
}

class RefreshSeatMapEvent extends SeatMapEvent {}

// outdated
class LoadLockSeatsEvent extends SeatMapEvent {
  final String showtimeId;
  LoadLockSeatsEvent(this.showtimeId);

  @override
  List<Object?> get props => [showtimeId];
}

class LockSeatsEvent extends SeatMapEvent {
  final String showtimeId;
  final List<String> seats;
  LockSeatsEvent({required this.showtimeId, required this.seats});

  @override
  List<Object?> get props => [showtimeId, seats];
}

class UnlockSeatsEvent extends SeatMapEvent {
  final String showtimeId;
  final List<String> seats;
  UnlockSeatsEvent({required this.showtimeId, required this.seats});

  @override
  List<Object?> get props => [showtimeId, seats];
}
