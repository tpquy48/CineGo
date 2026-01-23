import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/utils/formatters/price_formatter.dart';
import '../../../booking/presentation/bloc/booking/booking_cubit.dart';
import '../../../booking/presentation/bloc/booking/booking_state.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingCubit, BookingState>(
      builder: (context, state) {
        final draft = (state is BookingLocked) ? state.draft : null;
        final listSeatInfo = draft?.seats.fold<String>(
          '',
          (prev, seat) => prev.isEmpty ? seat.id : '$prev, ${seat.number}',
        );

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
              _infoRow(context.l10n.movie, draft?.movieTitle ?? '---'),
              _infoRow(context.l10n.cinema, draft?.cinemaName ?? '---'),
              _infoRow(
                context.l10n.date,
                '${draft?.date} - ${draft?.time}',
                // draft?.startTime != null
                //     ? '${draft!.startTime.day}/${draft.startTime.month}/${draft.startTime.year}'
                //     // ? draft!.startTime.formattedDate
                //     : '---',
              ),
              _infoRow(context.l10n.hall, draft?.hallName ?? '---'),
              _infoRow(context.l10n.seats, listSeatInfo ?? '---'),
              _infoRow(
                'Cost',
                draft != null ? draft.totalPrice.formatPrice() : '---',
                valueColor: AppColors.primary,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _qrSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
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
          child: Container(
            height: 1,
            color: index.isEven ? Colors.transparent : Colors.white24,
          ),
        ),
      ),
    );
  }

  Widget _infoRow(
    String label,
    String value, {
    Color valueColor = Colors.white,
  }) {
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
