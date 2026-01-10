import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/di/service_locator.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/session_entity.dart';
import '../cubit/sessions_cubit.dart';
import '../cubit/sessions_state.dart';
import 'by_cinema_view.dart';
import 'by_time_view.dart';

class SessionsTab extends StatefulWidget {
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

  void onSelectSession() {
    // TODO: Go to seat selection
  }

  @override
  Widget build(BuildContext context) {
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
                    ? ByCinemaView(
                        cinemas: state.cinemas,
                        onSelectSession: onSelectSession,
                      )
                    : ByTimeView(
                        sessions: _flattenSessions(state),
                        onSelectSession: onSelectSession,
                      ),
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

class SessionWithCinema {
  final String cinemaName;
  final SessionEntity session;

  SessionWithCinema({required this.cinemaName, required this.session});
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

const _headerStyle = TextStyle(fontSize: 12, color: Colors.white54);

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
