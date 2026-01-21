import 'package:flutter/material.dart';

import 'pay_screen.dart';
import 'ticket_screen.dart';

class PaymentLoadingScreen extends StatefulWidget {
  final bool isToTicket;
  const PaymentLoadingScreen({super.key, this.isToTicket = false});

  @override
  State<PaymentLoadingScreen> createState() => _PaymentLoadingScreenState();
}

class _PaymentLoadingScreenState extends State<PaymentLoadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (widget.isToTicket) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const TicketScreen()),
        );
      } else {
        // TODO: Navigate to Pay Screen
        // Navigator.push(context, MaterialPageRoute(builder: (_) => const PayScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0F172A),
      body: Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Color(0xFFFF7A1A),
        ),
      ),
    );
  }
}
