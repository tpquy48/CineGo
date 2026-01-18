import '../../../../../core/bloc/bloc.dart';

sealed class BookingState extends BaseState {}

class BookingInitial extends BookingState {}

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
