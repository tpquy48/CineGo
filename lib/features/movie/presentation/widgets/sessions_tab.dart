import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/cinema_entity.dart';
import '../../domain/entities/session_entity.dart';
import '../cubit/sessions_cubit.dart';
import '../cubit/sessions_state.dart';
import '../models/movie_detail_ui_model.dart';
import '../screens/movie_detail_screen.dart';

class SessionsTab extends StatefulWidget {
  // final MovieDetailUiModel movie;
  final int movieId;

  const SessionsTab({required this.movieId, super.key});

  @override
  State<SessionsTab> createState() => _SessionsTabState();
}

class _SessionsTabState extends State<SessionsTab> {
  late final SessionsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = sl<SessionsCubit>()
      ..load(
        1,
        // widget.movieId,
        //  date: DateTime.now(),
      );

    super.initState();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final cinemas = demoCinemas;

    // final flatSessions = _flattenSessions(state.cinemas);
    // ..sort(
    //   (a, b) =>
    //       timeAscending ? a.time.compareTo(b.time) : b.time.compareTo(a.time),
    // );

    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<SessionsCubit, SessionsState>(
        builder: (context, state) {
          if (state is SessionsLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is! SessionsLoaded) {
            return const SizedBox();
          }

          final cubit = context.read<SessionsCubit>();

          // final flatSessions = _flattenSessions(state.cinemas)
          //   ..sort(
          //     (a, b) => timeAscending
          //         ? a.session.time.compareTo(b.session.time)
          //         : b.session.time.compareTo(a.session.time),
          //   );

          // const Duration(seconds: 3);
          // Timer(const Duration(seconds: 3), cubit.toggleByCinema);

          return Column(
            children: [
              _SessionFilters(
                selectedDate: state.selectedDate,
                onPickDate: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: state.selectedDate,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 14)),
                  );

                  if (picked != null) {
                    cubit.changeDate(picked);
                  }
                },
                byCinema: state.byCinema,
                timeAscending: state.timeAscending,
                onToggleByCinema: (_) => cubit.toggleByCinema(),
                onToggleTime: cubit.toggleTimeSort,
              ),
              const _PriceHeader(),
              Expanded(
                child: state.byCinema
                    ? _ByCinemaView(state.cinemas)
                    : _ByTimeView(_flattenSessions(state)),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _SessionFilters extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPickDate;
  final bool byCinema;
  final bool timeAscending;
  final VoidCallback onToggleTime;
  final ValueChanged<bool> onToggleByCinema;

  const _SessionFilters({
    required this.selectedDate,
    required this.onPickDate,
    required this.byCinema,
    required this.timeAscending,
    required this.onToggleTime,
    required this.onToggleByCinema,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onPickDate,
            child: _FilterItem(
              Icons.calendar_today,
              DateFormat('MMM, dd').format(selectedDate),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: onToggleTime,
            child: _FilterItem(
              Icons.access_time,
              timeAscending
                  ? context.l10n.timeAscending
                  : context.l10n.timeDescending,
            ),
          ),
          Row(
            children: [
              Text(context.l10n.byCinema, style: const TextStyle(fontSize: 12)),
              const SizedBox(width: 8),
              Switch(
                value: byCinema,
                activeThumbColor: AppColors.primary,
                onChanged: onToggleByCinema,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FilterItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _FilterItem(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 20),
        const SizedBox(height: 4),
        Text(text, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _ByCinemaView extends StatelessWidget {
  final List<CinemaEntity> cinemas;

  const _ByCinemaView(this.cinemas);

  @override
  Widget build(BuildContext context) {
    return ListView(children: cinemas.map((c) => _CinemaBlock(c)).toList());
  }
}

class SessionWithCinema {
  final String cinemaName;
  // final Session session;
  final SessionEntity session;

  SessionWithCinema({required this.cinemaName, required this.session});
}

class _ByTimeView extends StatelessWidget {
  final List<SessionWithCinema> sessions;

  const _ByTimeView(this.sessions);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: sessions.map((s) {
        return _SessionItem(
          s.session.time,
          s.cinemaName,
          s.session.prices['Adult'] ?? '•',
        );
      }).toList(),
    );
  }
}

List<SessionWithCinema> _flattenSessions(SessionsLoaded state) {
  final list = <SessionWithCinema>[];

  for (final cinema in state.cinemas) {
    for (final session in cinema.sessions) {
      list.add(SessionWithCinema(cinemaName: cinema.name, session: session));
    }
  }

  list.sort(
    (a, b) => state.timeAscending
        ? a.session.time.compareTo(b.session.time)
        : b.session.time.compareTo(a.session.time),
  );

  return list;
}

class _SessionList extends StatelessWidget {
  const _SessionList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _SessionItem('14:40', 'Eurasia Cinema7', '2200 ₸'),
        _SessionItem('15:10', 'Kinopark 8 IMAX Saryarka', '3500 ₸'),
        _SessionItem('15:40', 'Kinopark 6 Keruencity Astana', '2700 ₸'),
        _SessionItem('16:05', 'Arman Asia Park', '1900 ₸'),
      ],
    );
  }
}

class _SessionItem extends StatelessWidget {
  final String time;
  final String cinema;
  final String price;

  const _SessionItem(this.time, this.cinema, this.price);

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
          Expanded(child: Text(cinema, style: const TextStyle(fontSize: 14))),
          Text(
            price,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class _PriceHeader extends StatelessWidget {
  const _PriceHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: const Color(0xFF121C2E),
      child: const Row(
        children: [
          SizedBox(width: 60, child: Text('Time', style: _headerStyle)),
          Expanded(child: Text('Adult', style: _headerStyle)),
          Expanded(child: Text('Child', style: _headerStyle)),
          Expanded(child: Text('Student', style: _headerStyle)),
          Expanded(child: Text('VIP', style: _headerStyle)),
        ],
      ),
    );
  }
}

const _headerStyle = TextStyle(fontSize: 12, color: Colors.white54);

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
  // final Session session;
  final SessionEntity session;

  const _SessionRow(this.session);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.white12)),
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
