// presentation/models/seat_ui_model.dart
class SeatUiModel {
  final String seatId;
  final String label; // '1'
  final bool isBlocked;
  final bool isSelected;

  const SeatUiModel({
    required this.seatId,
    required this.label,
    required this.isBlocked,
    required this.isSelected,
  });

  SeatUiModel copyWith({bool? isBlocked, bool? isSelected}) {
    return SeatUiModel(
      seatId: seatId,
      label: label,
      isBlocked: isBlocked ?? this.isBlocked,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
