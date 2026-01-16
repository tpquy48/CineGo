import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../models/seat_map_ui_model.dart';

class SeatGrid extends StatelessWidget {
  final SeatMapUiModel seatMap;
  final Set<String> selectedSeatIds;
  final void Function(String seatId) onSeatTap;

  const SeatGrid({
    required this.seatMap,
    required this.selectedSeatIds,
    required this.onSeatTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: seatMap.cols,
        childAspectRatio: 1,
        mainAxisSpacing: seatMap.cols > 12 ? 6 : 8,
        crossAxisSpacing: seatMap.cols > 12 ? 6 : 8,
      ),
      itemCount: seatMap.seats.length,
      itemBuilder: (_, index) {
        final seat = seatMap.seats[index];
        final isSelected = selectedSeatIds.contains(seat.id);

        return SeatItem(
          fontSize: seatMap.cols > 12 ? 9 : 11,
          label: seat.id,
          locked: seat.isLocked,
          selected: isSelected,
          onTap: () => onSeatTap(seat.id),
        );

        // Color color;
        // if (seat.isLocked) {
        //   color = Colors.grey;
        // } else if (isSelected) {
        //   color = Colors.green;
        // } else {
        //   color = Colors.white;
        // }

        // return GestureDetector(
        //   onTap: seat.isLocked ? null : () => onSeatTap(seat.id),
        //   child: Container(
        //     margin: const EdgeInsets.all(4),
        //     alignment: Alignment.center,
        //     decoration: BoxDecoration(
        //       color: color,
        //       borderRadius: BorderRadius.circular(6),
        //     ),
        //     child: Text('${seat.row}${seat.number}'),
        //   ),
        // );
      },
    );
  }
}

class SeatItem extends StatelessWidget {
  final double fontSize;
  final String label;
  final bool selected;
  // final bool blocked;
  final bool locked;
  final VoidCallback onTap;

  const SeatItem({
    required this.fontSize,
    required this.label,
    required this.selected,
    required this.locked,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: locked ? null : onTap,
      child: AnimatedScale(
        scale: selected ? 1.05 : 1,
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOutBack,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: locked
                ? const Color(0xFF1A2438)
                : selected
                ? AppColors.primary
                : const Color(0xFF22304A),
            borderRadius: BorderRadius.circular(8),
            boxShadow: selected
                ? [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: .45),
                      blurRadius: 14,
                      spreadRadius: 1,
                    ),
                  ]
                : [],
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
              color: selected ? Colors.white : Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}


// class SeatGrid extends StatelessWidget {
//   final List<SeatUiModel> seats;
//   final Set<String> lockedSeatIds;
//   final Set<String> selectedSeatIds;
//   final void Function(String) onSeatTap;

//   const SeatGrid({
//     required this.seats,
//     required this.lockedSeatIds,
//     required this.selectedSeatIds,
//     required this.onSeatTap,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       itemCount: seats.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 11,
//         mainAxisSpacing: 8,
//         crossAxisSpacing: 8,
//       ),
//       itemBuilder: (_, index) {
//         final seat = seats[index];

//         return SeatItem(
//           label: seat.seatId,
//           blocked: lockedSeatIds.contains(seat.seatId),
//           selected: selectedSeatIds.contains(seat.seatId),
//           onTap: () => onSeatTap(seat.seatId),
//         );
//       },
//     );
//   }
// }