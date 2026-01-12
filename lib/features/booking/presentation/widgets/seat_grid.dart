import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../models/seat.dart';

class SeatGrid extends StatefulWidget {
  final Function(String) onSeatTap;
  final Set<String> selectedSeatIds;

  const SeatGrid({
    required this.onSeatTap,
    required this.selectedSeatIds,
    super.key,
  });

  @override
  State<SeatGrid> createState() => _SeatGridState();
}

class _SeatGridState extends State<SeatGrid> {
  final List<Seat> seats = List.generate(
    88,
    (i) => Seat(id: 'R${i ~/ 11}-S${i % 11}'),
  );

  // final Set<String> selectedSeatIds = {};

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
        final selected = widget.selectedSeatIds.contains(seat.id);

        return SeatItem(
          label: '${index % 11 + 1}',
          blocked: seat.blocked,
          selected: selected,
          onTap: () => widget.onSeatTap(seat.id),
        );
      },
    );
  }
}

class SeatItem extends StatelessWidget {
  final bool selected;
  final bool blocked;
  final String label;
  final VoidCallback onTap;

  const SeatItem({
    required this.selected,
    required this.blocked,
    required this.label,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: blocked ? null : onTap,
      child: AnimatedScale(
        scale: selected ? 1.15 : 1,
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
