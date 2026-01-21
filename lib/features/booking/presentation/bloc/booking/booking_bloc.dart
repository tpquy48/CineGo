// import 'dart:async';

// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../domain/booking_usecases.dart';
// import 'booking_event.dart';
// import 'booking_state.dart';

// class BookingBloc extends Bloc<BookingEvent, BookingState> {
//   final CreateBookingUsecase createBooking;
//   BookingBloc(this.createBooking) : super(BookingInitial()) {
//     on<ConfirmBookingEvent>(_confirmBooking);
//   }

//   Future<void> _confirmBooking(
//     ConfirmBookingEvent event,
//     Emitter<BookingState> emit,
//   ) async {
//     emit(BookingLoading());
//     try {
//       final bookingId = await createBooking(
//         movieId: event.movieId,
//         showtimeId: event.showtimeId,
//         seatIds: event.seats,
//         // foods: event.foods,
//         totalPrice: event.totalPrice,
//       );
//       emit(BookingSuccess(bookingId));
//     } catch (e) {
//       emit(BookingFailure(e.toString()));
//     }
//   }
// }
