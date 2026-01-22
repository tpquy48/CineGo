import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/ticket_card.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColors.splashPrimary,
          appBar: AppBar(
            backgroundColor: AppColors.splashPrimary,
            elevation: 0,
            title: Text(context.l10n.yourTicket),
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
        ),

        // Payment Loading Indicator
        const Scaffold(
          backgroundColor: AppColors.splashPrimary,
          body: Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
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
            },
            child: const Text('Send'),
          ),
        ),
      ],
    );
  }
}
