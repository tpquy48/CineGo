import 'package:flutter/material.dart';

import 'base_sheet.dart';

class AddCardSheet extends StatefulWidget {
  const AddCardSheet({super.key});

  @override
  State<AddCardSheet> createState() => _AddCardSheetState();
}

class _AddCardSheetState extends State<AddCardSheet> {
  final cardCtrl = TextEditingController();
  final mmCtrl = TextEditingController();
  final yyCtrl = TextEditingController();
  final cvcCtrl = TextEditingController();

  bool get isValid =>
      cardCtrl.text.length >= 16 &&
      mmCtrl.text.length == 2 &&
      yyCtrl.text.length == 2 &&
      cvcCtrl.text.length >= 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: BaseSheet(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Add card',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 16),

            _input(controller: cardCtrl, hint: 'Card number', keyboardType: TextInputType.number),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: _input(controller: mmCtrl, hint: 'MM', keyboardType: TextInputType.number),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _input(controller: yyCtrl, hint: 'YY', keyboardType: TextInputType.number),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _input(
                    controller: cvcCtrl,
                    hint: 'CVC',
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isValid ? const Color(0xFFFF7A1A) : Colors.grey.shade700,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                onPressed: isValid
                    ? () {
                        // TODO: save card
                        Navigator.pop(context);
                      }
                    : null,
                child: const Text('Add card'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _input({
    required TextEditingController controller,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white38),
        filled: true,
        fillColor: const Color(0xFF1E293B),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: (_) => setState(() {}),
    );
  }
}

// HOW TO CALL
/* showModalBottomSheet(
  context: context,
  backgroundColor: Colors.transparent,
  isScrollControlled: true,
  builder: (_) => const AddCardSheet(),
);
 */
