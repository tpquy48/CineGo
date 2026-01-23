import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/booking_usecases.dart';
import '../../../domain/entities/booking_draft_entity.dart';
import '../../models/seat_ui_model.dart';
import 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  // final CreateBookingUsecase createBooking;
  // final GetLockedSeatsUseCase getLockedSeats;
  final LockSeatsUseCase lockSeats;
  final UnlockSeatsUseCase unlockSeats;

  BookingCubit({required this.lockSeats, required this.unlockSeats})
    : super(BookingInitial());

  Future<void> startBooking({
    required String showtimeId,
    required List<SeatUiModel> seats,
    required String movieId,
    required String movieTitle,
    required String cinemaName,
    required String hallName,
    required String date,
    required String time,
  }) async {
    emit(BookingLocking());

    final result = await lockSeats(
      showtimeId: showtimeId,
      seatIds: seats.map((e) => e.id).toList(),
    );

    result.fold(
      (failure) {
        emit(BookingFailure(failure.message));
      },
      (lockResult) {
        emit(
          BookingLocked(
            BookingDraftEntity(
              showtimeId: showtimeId,
              movieId: movieId,
              movieTitle: movieTitle, // từ MovieDetail
              cinemaName: cinemaName,
              hallName: hallName,
              // startTime: DateTime.parse('${date} ${time}'),
              startTime: DateTime.now(),
              seats: seats,
              totalPrice: seats.fold(0, (s, e) => s + e.price),
              lockId: lockResult.lockId,
              expiresAt: lockResult.expiresAt,
              time: time,
              date: date,
            ),
            // BookingDraftEntity(
            //   showtimeId: showtimeId,
            //   seats: seats,
            //   totalPrice: seats.fold(0, (s, e) => s + e.price),
            //   lockId: lockResult.lockId,
            //   expiresAt: lockResult.expiresAt,
            // ),
          ),
        );
      },
    );
  }

  Future<void> cancelBooking() async {
    final state = this.state;
    if (state is! BookingLocked) {
      return;
    }

    await unlockSeats(lockId: state.draft.lockId);
    emit(BookingInitial());
  }

  // Future<void> confirmBooking({
  //   required String showtimeId,
  //   required List<SeatModel> seats,
  //   required int movieId,
  //   required int totalPrice,
  // }) async {
  //   emit(BookingLoading());

  //   try {
  //     // Validate
  //     if (seats.isEmpty) {
  //       throw Exception('No seats selected');
  //     }

  //     // Ensure seats still locked by this user
  //     final lockedIds = await getLockedSeats(showtimeId);
  //     final seatIds = seats.map((e) => e.id).toList();

  //     for (final seat in seats) {
  //       if (!lockedIds.contains(seat.id)) {
  //         throw Exception('Seat ${seat.id} is no longer available');
  //       }
  //     }

  //     // Create booking + tickets (transaction)
  //     final bookingId = await createBooking(
  //       showtimeId: showtimeId,
  //       seatIds: seatIds,
  //       movieId: movieId,
  //       totalPrice: totalPrice,
  //     );

  //     // Release locks
  //     await unlockSeats(showtimeId: showtimeId, seatIds: seatIds);

  //     emit(BookingSuccess(bookingId));
  //   } catch (e) {
  //     emit(BookingFailure(e.toString()));
  //   }
  // }
}
