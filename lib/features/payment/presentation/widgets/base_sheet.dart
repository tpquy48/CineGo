import 'package:flutter/material.dart';

class BaseSheet extends StatelessWidget {
  final Widget child;

  const BaseSheet({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFF162235),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(child: child),
    );
  }
}
