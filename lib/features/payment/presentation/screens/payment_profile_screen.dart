import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/app_colors.dart';

class PaymentProfileScreen extends StatelessWidget {
  final bool hasTickets;

  const PaymentProfileScreen({required this.hasTickets, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashPrimary,
      appBar: AppBar(
        backgroundColor: AppColors.splashPrimary,
        elevation: 0,
        leading: const BackButton(),
        title: const Text('8 (707) 268 48 12', style: TextStyle(fontSize: 16)),
        actions: [IconButton(icon: const Icon(Icons.logout), onPressed: () {})],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle(context.l10n.savedCards),
            _savedCard(),
            const SizedBox(height: 10),
            _addCardButton(context),
            const SizedBox(height: 24),
            _sectionTitle(context.l10n.paymentsHistory),
            const SizedBox(height: 12),
            Expanded(child: hasTickets ? _paymentsHistory() : _emptyHistory()),
          ],
        ),
      ),
    );
  }

  Widget _savedCard() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              'VISA',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              '4716 •••• •••• 5615',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Text('06/24', style: TextStyle(color: Colors.white38)),
        ],
      ),
    );
  }

  Widget _addCardButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
        side: const BorderSide(color: Colors.white24),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
      onPressed: () {},
      child: Text(context.l10n.addNewCard),
    );
  }

  Widget _paymentsHistory() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://image.tmdb.org/t/p/w200/74xTEgt7R36Fpooo50r9T25onhq.jpg',
              width: 48,
              height: 64,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The Batman',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '6 April 2022, 14:40',
                  style: TextStyle(color: Colors.white54),
                ),
                SizedBox(height: 2),
                Text(
                  'Eurasia Cinema7',
                  style: TextStyle(color: Colors.white38),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _emptyHistory() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.local_movies_outlined, size: 48, color: Colors.white24),
          SizedBox(height: 12),
          Text(
            "You haven't bought tickets yet",
            style: TextStyle(color: Colors.white38),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white54, fontSize: 13),
      ),
    );
  }
}
