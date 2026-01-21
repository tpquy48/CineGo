import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/l10n/l10n.dart';
import '../cubit/sessions_cubit.dart';
import '../cubit/sessions_state.dart';
import 'sessions_tab.dart';

class ByTimeView extends StatelessWidget {
  final List<SessionWithCinema> sessions;
  final SelectSessionCallback onSelectSession;

  const ByTimeView({
    required this.sessions,
    required this.onSelectSession,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: sessions.map((s) {
        return _SessionItem(
          s.session.showtimeId,
          s.session.time,
          s.cinemaName,
          s.session.prices,
          onSelectSession,
        );
      }).toList(),
    );
  }
}

class _SessionItem extends StatelessWidget {
  final String showtimeId;
  final String time;
  final String cinema;
  final Map<String, String> prices;
  final SelectSessionCallback onSelectSession;

  const _SessionItem(
    this.showtimeId,
    this.time,
    this.cinema,
    this.prices,
    this.onSelectSession,
  );

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SessionsCubit>();
    final state = cubit.state as SessionsLoaded;
    final selectedDate = state.selectedDate;
    final cinemaName = cinema;

    return InkWell(
      onTap: () => onSelectSession(
        showtimeId: showtimeId,
        selectedDate: selectedDate,
        time: time,
        date: DateFormat('MMM, dd').format(selectedDate),
        cinemaName: cinemaName,
        // hallName: session.hallName,
        hallName: '6th Floor Hall', // TODO: Fix me
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white12)),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              child: Text(
                time,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cinema,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      ...[
                        context.l10n.adult,
                        context.l10n.child,
                        context.l10n.student,
                        context.l10n.vip,
                      ].map(
                        (k) => Expanded(
                          child: Text(
                            prices[k] ?? '•',
                            style: const TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
