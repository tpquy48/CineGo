import 'package:flutter/material.dart';

import '../screens/movie_detail_screen.dart';

class SessionsTab extends StatefulWidget {
  const SessionsTab({super.key});

  @override
  State<SessionsTab> createState() => _SessionsTabState();
}

class _SessionsTabState extends State<SessionsTab> {
  bool byCinema = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SessionFilters(byCinema: byCinema, onToggle: (v) => setState(() => byCinema = v)),
        const _PriceHeader(),
        Expanded(
          child: ListView(children: demoCinemas.map((cinema) => _CinemaBlock(cinema)).toList()),
        ),
      ],
    );
  }
}

class _SessionFilters extends StatelessWidget {
  final bool byCinema;
  final ValueChanged<bool> onToggle;

  const _SessionFilters({required this.byCinema, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _FilterItem(Icons.calendar_today, 'April, 18'),
          const _FilterItem(Icons.access_time, 'Time ↑'),
          Row(
            children: [
              const Text('By cinema', style: TextStyle(fontSize: 12)),
              const SizedBox(width: 8),
              Switch(
                value: byCinema,
                activeThumbColor: const Color(0xFFFF7A1A),
                onChanged: onToggle,
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
            child: Text(time, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ),
          Expanded(child: Text(cinema, style: const TextStyle(fontSize: 14))),
          Text(price, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
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
  final Cinema cinema;

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
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      cinema.address,
                      style: const TextStyle(fontSize: 12, color: Colors.white54),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.location_on, size: 14, color: Colors.white54),
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
  final Session session;

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
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(session.format, style: const TextStyle(fontSize: 11, color: Colors.white54)),
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
