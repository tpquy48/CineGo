import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/seat_model.dart';
import '../../../domain/booking_usecases.dart';
import 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  // final BookingRepository bookingRepo;
  // final SeatLockRepository seatLockRepo;
  final CreateBookingUsecase createBooking;
  final GetLockedSeatsUseCase getLockedSeats;
  final UnlockSeatsUseCase unlockSeats;

  BookingCubit({
    required this.createBooking,
    required this.getLockedSeats,
    required this.unlockSeats,
  }) : super(BookingInitial());

  Future<void> confirmBooking({
    required String showtimeId,
    required List<SeatModel> seats,
    required int movieId,
    required int totalPrice,
  }) async {
    emit(BookingLoading());

    try {
      // Validate
      if (seats.isEmpty) {
        throw Exception('No seats selected');
      }

      // Ensure seats still locked by this user
      final lockedIds = await getLockedSeats(showtimeId);
      final seatIds = seats.map((e) => e.id).toList();

      for (final seat in seats) {
        if (!lockedIds.contains(seat.id)) {
          throw Exception('Seat ${seat.id} is no longer available');
        }
      }

      // Create booking + tickets (transaction)
      final bookingId = await createBooking(
        showtimeId: showtimeId,
        seatIds: seatIds,
        movieId: movieId,
        totalPrice: totalPrice,
      );

      // Release locks
      await unlockSeats(showtimeId, seatIds);

      emit(BookingSuccess(bookingId));
    } catch (e) {
      emit(BookingFailure(e.toString()));
    }
  }
}
