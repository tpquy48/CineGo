class SeatUiModel {
  final String id;
  final String row;
  final int number;
  final int price;

  final bool isLocked;
  final bool isSelected;

  const SeatUiModel({
    required this.id,
    required this.row,
    required this.number,
    required this.price,
    required this.isLocked,
    required this.isSelected,
  });
}
