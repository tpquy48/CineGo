import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class BottomBuyBar extends StatelessWidget {
  final int count;

  const BottomBuyBar({required this.count, super.key});

  @override
  Widget build(BuildContext context) {
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
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          onPressed: () {
            // TODO: Go to payment loading screen
          },
          child: Text(
            'Buy $count tickets • ${count * 1600} ₸',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
