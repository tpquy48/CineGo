import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class BottomBuyBar extends StatelessWidget {
  final int selectedCount;
  final int totalPrice;
  final bool isLoading;
  final VoidCallback onConfirm;

  const BottomBuyBar({
    required this.selectedCount,
    required this.totalPrice,
    required this.onConfirm,
    super.key,
    this.isLoading = false,
  });

  // TODO: Move to utils
  String formatPrice(int price) {
    // Simple price formatting, you can enhance it as needed
    return price.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]},',
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
          onPressed: isLoading ? null : onConfirm,
          child: Text(
            // 'Buy $count tickets • ${count * 1600} ₸',
            'Buy $selectedCount ticket${selectedCount > 1 ? 's' : ''} • ${formatPrice(totalPrice)} đ',
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