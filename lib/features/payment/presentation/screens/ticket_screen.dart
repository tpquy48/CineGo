import 'package:flutter/material.dart';

import '../widgets/ticket_card.dart';
import 'payment_profile_screen.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        title: const Text('Your ticket'),
        leading: const BackButton(),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TicketCard(),
            const Spacer(),
            _bottomButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _bottomButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.white24),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              minimumSize: const Size.fromHeight(48),
            ),
            onPressed: () {},
            child: const Text('Refund'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF7A1A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              minimumSize: const Size.fromHeight(48),
            ),
            onPressed: () {
              // TODO: Implement send ticket functionality
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const PaymentProfileScreen(hasTickets: false),
                ),
              );
            },
            child: const Text('Send'),
          ),
        ),
      ],
    );
  }
}
