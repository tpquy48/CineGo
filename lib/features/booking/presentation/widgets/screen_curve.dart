import 'package:flutter/material.dart';

class ScreenCurve extends StatelessWidget {
  const ScreenCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'SCREEN',
          style: TextStyle(
            fontSize: 11,
            letterSpacing: 1.5,
            color: Colors.white54,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          height: 3,
          margin: const EdgeInsets.symmetric(horizontal: 48),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.white24, Colors.transparent],
            ),
          ),
        ),
      ],
    );
  }
}
