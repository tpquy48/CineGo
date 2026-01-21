import 'package:flutter/material.dart';

import 'base_sheet.dart';

class CardOptionsSheet extends StatelessWidget {
  const CardOptionsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Bank card',
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          const Text('4716 •••• •••• 5615', style: TextStyle(color: Colors.white54)),
          const SizedBox(height: 16),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
              side: const BorderSide(color: Colors.white24),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () {
              // TODO: remove card logic
              Navigator.pop(context);
            },
            child: const Text('Remove card'),
          ),
        ],
      ),
    );
  }
}

// HOW TO CALL
/* showModalBottomSheet(
  context: context,
  backgroundColor: Colors.transparent,
  isScrollControlled: true,
  builder: (_) => const CardOptionsSheet(),
);
 */
