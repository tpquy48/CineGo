class Seat {
  final String id;
  final bool blocked;

  Seat({required this.id, this.blocked = false});

  Seat copyWith({required String id, required bool blocked}) {
    return Seat(id: id, blocked: blocked);
  }
}
