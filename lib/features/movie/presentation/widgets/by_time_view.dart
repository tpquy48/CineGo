import 'package:flutter/material.dart';

import 'sessions_tab.dart';

class ByTimeView extends StatelessWidget {
  final List<SessionWithCinema> sessions;

  const ByTimeView(this.sessions, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: sessions.map((s) {
        return _SessionItem(s.session.time, s.cinemaName, s.session.prices);
      }).toList(),
    );
  }
}

class _SessionItem extends StatelessWidget {
  final String time;
  final String cinema;
  final Map<String, String> prices;

  const _SessionItem(this.time, this.cinema, this.prices);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
    );
  }
}
