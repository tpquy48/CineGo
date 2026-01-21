extension PriceFormatter on int {
  String formatPrice({String suffix = 'đ'}) {
    final formatted = toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
    );
    return '$formatted $suffix';
  }
}

// extension PriceFormatter on num {
//   String formatPrice() => toInt().formatPrice();
// }
