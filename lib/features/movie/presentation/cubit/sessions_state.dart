import '../../../../core/bloc/base_state.dart';
import '../../domain/entities/cinema_entity.dart';

sealed class SessionsState extends BaseState {
  const SessionsState();
}

class SessionsLoading extends SessionsState {}

class SessionsLoaded extends SessionsState {
  final List<CinemaEntity> cinemas;
  final bool byCinema;
  final bool timeAscending;
  final DateTime selectedDate;

  const SessionsLoaded({
    required this.cinemas,
    required this.byCinema,
    required this.timeAscending,
    required this.selectedDate,
  });

  SessionsLoaded copyWith({
    List<CinemaEntity>? cinemas,
    bool? byCinema,
    bool? timeAscending,
    DateTime? selectedDate,
  }) {
    return SessionsLoaded(
      cinemas: cinemas ?? this.cinemas,
      byCinema: byCinema ?? this.byCinema,
      timeAscending: timeAscending ?? this.timeAscending,
      selectedDate: selectedDate ?? this.selectedDate,
    );
  }

  @override
  List<Object?> get props => [cinemas, byCinema, timeAscending, selectedDate];
}

class SessionsError extends SessionsState {
  final String message;
  const SessionsError(this.message);

  @override
  List<Object?> get props => [message];
}
