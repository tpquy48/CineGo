// Ticket Screen: This screen is just for demo purpose
// In real app, ticket info should be fetched from backend after successful payment
// and displayed here

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/ticket_card.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fakeFetchTicket();
  }

  Future<void> _fakeFetchTicket() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) {
      return;
    }
    setState(() => _isLoading = false);
  }

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
            leading: BackButton(onPressed: context.pop),
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

        /// LOADING OVERLAY (2s)
        if (_isLoading) const _TicketLoadingOverlay(),
      ],
    );
  }

  Widget _bottomButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppColors.primary),
            ),
            child: const Text(
              'Refund',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: const Text('Send', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}

class _TicketLoadingOverlay extends StatelessWidget {
  const _TicketLoadingOverlay();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.splashPrimary,
      body: Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: AppColors.primary,
        ),
      ),
    );
  }
}
