import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        children: [
          _qrSection(),
          const SizedBox(height: 16),
          const Text(
            'Show this code to the gatekeeper at the cinema',
            style: TextStyle(color: Colors.white38, fontSize: 12),
          ),
          const SizedBox(height: 20),
          _divider(),
          const SizedBox(height: 16),
          _infoRow('Movie', 'The Batman'),
          _infoRow('Cinema', 'Eurasia Cinema7'),
          _infoRow('Date', '6 April 2022, 14:40'),
          _infoRow('Hall', '6th'),
          _infoRow('Seats', '7 row (7, 8)'),
          _infoRow('Cost', '3200 ₸ (paid)', valueColor: const Color(0xFFFF7A1A)),
        ],
      ),
    );
  }

  Widget _qrSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: QrImageView(
        data: 'TICKET|BATMAN|ROW7|SEAT7-8|EURASIA',
        size: 220,
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _divider() {
    return Row(
      children: List.generate(
        20,
        (index) => Expanded(
          child: Container(height: 1, color: index.isEven ? Colors.transparent : Colors.white24),
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value, {Color valueColor = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(label, style: const TextStyle(color: Colors.white54)),
          ),
          Expanded(
            child: Text(value, style: TextStyle(color: valueColor)),
          ),
        ],
      ),
    );
  }
}
