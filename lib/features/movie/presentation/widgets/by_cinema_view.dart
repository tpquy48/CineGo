import 'package:flutter/material.dart';

import '../../domain/entities/cinema_entity.dart';
import '../../domain/entities/session_entity.dart';

class ByCinemaView extends StatelessWidget {
  final List<CinemaEntity> cinemas;

  const ByCinemaView(this.cinemas, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: cinemas.map((c) => _CinemaBlock(c)).toList());
  }
}

class _CinemaBlock extends StatelessWidget {
  final CinemaEntity cinema;

  const _CinemaBlock(this.cinema);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cinema.name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      cinema.address,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 14,
                    color: Colors.white54,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    cinema.distance,
                    style: const TextStyle(fontSize: 12, color: Colors.white54),
                  ),
                ],
              ),
            ],
          ),
        ),
        ...cinema.sessions.map((s) => _SessionRow(s)),
      ],
    );
  }
}

class _SessionRow extends StatelessWidget {
  final SessionEntity session;

  const _SessionRow(this.session);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white12),
          bottom: BorderSide(color: Colors.white12),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  session.time,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  session.format,
                  style: const TextStyle(fontSize: 11, color: Colors.white54),
                ),
              ],
            ),
          ),
          ...['Adult', 'Child', 'Student', 'VIP'].map(
            (k) => Expanded(
              child: Text(
                session.prices[k] ?? '•',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
