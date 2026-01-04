import '../../../../core/bloc/bloc.dart';

abstract class BookingState extends BaseState {}

class BookingInitial extends BookingState {}

class BookingLoading extends BookingState {}

class BookingSuccess extends BookingState {}

class BookingFailure extends BookingState {
  final String message;
  BookingFailure(this.message);

  @override
  List<Object?> get props => [message];
}
