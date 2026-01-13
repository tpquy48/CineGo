class SeatModel {
  final int rowIndex; // 0
  final int colIndex; // 0
  final String type; // 'regular'

  const SeatModel({
    required this.rowIndex,
    required this.colIndex,
    required this.type,
  });

  factory SeatModel.fromJson(Map<String, dynamic> json) {
    return SeatModel(
      rowIndex: json['row_index'],
      colIndex: json['col_index'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() => {
    'row_index': rowIndex,
    'col_index': colIndex,
    'type': type,
  };
}

// class SeatModel {
//   final String id;
//   final int row;
//   final int number;
//   final bool isBlocked;

//   const SeatModel({
//     required this.id,
//     required this.row,
//     required this.number,
//     required this.isBlocked,
//   });

//   factory SeatModel.fromJson(Map<String, dynamic> json) {
//     return SeatModel(
//       id: json['id'],
//       row: json['row'],
//       number: json['number'],
//       isBlocked: json['is_blocked'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'row': row,
//     'number': number,
//     'is_blocked': isBlocked,
//   };
// }
