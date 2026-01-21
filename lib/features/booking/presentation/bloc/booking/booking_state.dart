import '../../../../../core/bloc/bloc.dart';
import '../../../domain/entities/booking_draft_entity.dart';

sealed class BookingState extends BaseState {}

class BookingInitial extends BookingState {}

class BookingLocking extends BookingState {}

class BookingLocked extends BookingState {
  final BookingDraftEntity draft;

  BookingLocked(this.draft);

  @override
  List<Object?> get props => [draft];
}

class BookingLoading extends BookingState {}

class BookingSuccess extends BookingState {
  final String bookingId;
  BookingSuccess(this.bookingId);

  @override
  List<Object?> get props => [bookingId];
}

class BookingFailure extends BookingState {
  final String message;
  BookingFailure(this.message);

  @override
  List<Object?> get props => [message];
}
