import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../models/seat_ui_model.dart';

class SeatGrid extends StatelessWidget {
  final List<SeatUiModel> seats;
  final Set<String> lockedSeatIds;
  final Set<String> selectedSeatIds;
  final void Function(String) onSeatTap;

  const SeatGrid({
    required this.seats,
    required this.lockedSeatIds,
    required this.selectedSeatIds,
    required this.onSeatTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: seats.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 11,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (_, index) {
        final seat = seats[index];

        return SeatItem(
          label: seat.seatId,
          blocked: lockedSeatIds.contains(seat.seatId),
          selected: selectedSeatIds.contains(seat.seatId),
          onTap: () => onSeatTap(seat.seatId),
        );
      },
    );
  }
}

class SeatItem extends StatelessWidget {
  final String label;
  final bool selected;
  final bool blocked;
  final VoidCallback onTap;

  const SeatItem({
    required this.label,
    required this.selected,
    required this.blocked,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: blocked ? null : onTap,
      child: AnimatedScale(
        scale: selected ? 1.05 : 1,
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOutBack,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: blocked
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
              fontSize: 11,
              color: selected ? Colors.white : Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}
