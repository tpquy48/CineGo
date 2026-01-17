import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/cinema_entity.dart';
import '../../domain/entities/session_entity.dart';
import '../cubit/sessions_cubit.dart';
import '../cubit/sessions_state.dart';

class ByCinemaView extends StatelessWidget {
  final List<CinemaEntity> cinemas;
  final void Function(String, DateTime, String) onSelectSession;

  const ByCinemaView({
    required this.cinemas,
    required this.onSelectSession,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: cinemas
          .map(
            (cinema) =>
                _CinemaBlock(cinema: cinema, onSelectSession: onSelectSession),
          )
          .toList(),
    );
  }
}

class _CinemaBlock extends StatelessWidget {
  final CinemaEntity cinema;
  final void Function(String, DateTime, String) onSelectSession;

  const _CinemaBlock({required this.cinema, required this.onSelectSession});

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
        ...cinema.sessions.map(
          (s) => _SessionRow(session: s, onSelectSession: onSelectSession),
        ),
      ],
    );
  }
}

class _SessionRow extends StatelessWidget {
  final SessionEntity session;
  final void Function(String, DateTime, String) onSelectSession;

  const _SessionRow({required this.session, required this.onSelectSession});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SessionsCubit>();
    final selectedDate = (cubit.state as SessionsLoaded).selectedDate;

    return InkWell(
      onTap: () =>
          onSelectSession(session.showtimeId, selectedDate, session.time),
      child: Container(
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
      ),
    );
  }
}
