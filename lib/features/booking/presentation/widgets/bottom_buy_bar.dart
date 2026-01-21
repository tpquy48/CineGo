import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/formatters/price_formatter.dart';
import '../bloc/booking/booking_cubit.dart';
import '../models/seat_ui_model.dart';
import '../screens/seat_selection_screen.dart';

class BottomBuyBar extends StatelessWidget {
  final SeatSelectionArguments seatArgs;
  final List<SeatUiModel> seats;
  final int selectedCount;
  final int totalPrice;
  final bool isLoading;
  // final VoidCallback onConfirm;

  const BottomBuyBar({
    required this.seatArgs,
    required this.seats,
    required this.selectedCount,
    required this.totalPrice,
    // required this.onConfirm,
    this.isLoading = false,
    super.key,
  });

  void _onConfirm(BuildContext context) {
    context.read<BookingCubit>().startBooking(
      showtimeId: seatArgs.showtimeId,
      seats: seats,
      movieId: seatArgs.movieId,
      movieTitle: seatArgs.movieTitle,
      cinemaName: seatArgs.cinemaName,
      hallName: seatArgs.hallName,
      date: seatArgs.date,
      time: seatArgs.time,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (selectedCount == 0) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.appBarBg,
        border: Border(top: BorderSide(color: Colors.white12)),
      ),
      child: SizedBox(
        height: 52,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isLoading ? Colors.grey : AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          onPressed: isLoading ? null : () => _onConfirm(context),
          child: Text(
            // 'Buy $count tickets • ${count * 1600} ₸',
            'Buy $selectedCount ticket${selectedCount > 1 ? 's' : ''} • ${totalPrice.formatPrice()} đ',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}


// class BottomBuyBar extends StatelessWidget {
//   final int selectedCount;
//   final int totalPrice;
//   final bool isLoading;
//   final VoidCallback onConfirm;

//   const BottomBuyBar({
//     required this.selectedCount,
//     required this.totalPrice,
//     required this.onConfirm,
//     super.key,
//     this.isLoading = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     if (selectedCount == 0) {
//       return const SizedBox.shrink();
//     }

//     return SafeArea(
//       top: false,
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: const BoxDecoration(
//           color: Color(0xFF0E1624),
//           border: Border(top: BorderSide(color: Color(0xFF1F2A40))),
//         ),
//         child: Row(
//           children: [
//             Expanded(
//               child: Text(
//                 '$selectedCount seat${selectedCount > 1 ? 's' : ''} selected',
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: isLoading ? null : onConfirm,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: AppColors.primary,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 24,
//                   vertical: 12,
//                 ),
//               ),
//               child: isLoading
//                   ? const SizedBox(
//                       width: 18,
//                       height: 18,
//                       child: CircularProgressIndicator(
//                         strokeWidth: 2,
//                         color: Colors.white,
//                       ),
//                     )
//                   : const Text('Continue'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }