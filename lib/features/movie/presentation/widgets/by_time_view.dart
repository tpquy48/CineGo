import 'package:flutter/material.dart';

import 'sessions_tab.dart';

class ByTimeView extends StatelessWidget {
  final List<SessionWithCinema> sessions;
  final void Function(String) onSelectSession;

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
  final void Function(String) onSelectSession;

  const _SessionItem(
    this.showtimeId,
    this.time,
    this.cinema,
    this.prices,
    this.onSelectSession,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelectSession(showtimeId),
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
                      ...['Adult', 'Child', 'Student', 'VIP'].map(
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
