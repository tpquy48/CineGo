import 'package:flutter/material.dart';

import '../widgets/about_tab.dart';
import '../widgets/sessions_tab.dart';

class Cinema {
  final String name;
  final String address;
  final String distance;
  final List<Session> sessions;

  Cinema({
    required this.name,
    required this.address,
    required this.distance,
    required this.sessions,
  });
}

class Session {
  final String time;
  final String format;
  final Map<String, String> prices;

  Session({required this.time, required this.format, required this.prices});
}

final demoCinemas = [
  Cinema(
    name: 'Eurasia Cinema7',
    address: 'ул. Петрова, д.24, ТЦ "Евразия"',
    distance: '1.5km',
    sessions: [
      Session(
        time: '14:40',
        format: 'Рус',
        prices: {'Adult': '2200 ₸', 'Child': '1000 ₸', 'Student': '1500 ₸'},
      ),
      Session(
        time: '15:10',
        format: 'IMAX Рус',
        prices: {'Adult': '3500 ₸', 'Child': '1500 ₸', 'Student': '2500 ₸', 'VIP': '4000 ₸'},
      ),
    ],
  ),
  Cinema(
    name: 'Arman Asia Park',
    address: 'пр. Кабанбай батыра 21, ТРЦ «Asia Park»',
    distance: '5km',
    sessions: [
      Session(time: '16:05', format: 'Қаз', prices: {'Adult': '1900 ₸', 'Student': '1200 ₸'}),
      Session(time: '16:15', format: 'Рус', prices: {'Adult': '2300 ₸', 'Student': '1600 ₸'}),
    ],
  ),
];

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFF0E1624),
        appBar: AppBar(
          backgroundColor: const Color(0xFF162033),
          elevation: 0,
          leading: const BackButton(),
          title: const Text(
            'The Batman',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Color(0xFFFF7A1A),
            indicatorWeight: 3,
            labelColor: Color(0xFFFF7A1A),
            unselectedLabelColor: Colors.white54,
            tabs: [
              Tab(text: 'About'),
              Tab(text: 'Sessions'),
            ],
          ),
        ),
        body: const TabBarView(children: [AboutTab(), SessionsTab()]),
      ),
    );
  }
}







/* class MovieDetailScreen extends StatelessWidget {
  final MovieEntity movie;
  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(movie.posterPath),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Soft blur on the whole background
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: SafeArea(
              child: Column(
                children: [
                  // Top Row: Back button & Favorite
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const BackButton(color: Colors.white),
                        IconButton(icon: const Icon(Icons.favorite_border, color: Colors.white), onPressed: () {}),
                      ],
                    ),
                  ),
                  const Spacer(),
                  // The Glassmorphic Card from Figma
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    child: GlassInfoCard(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(movie.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                          const SizedBox(height: 10),
                          const MovieMetadataRow(), // Row for 120min, Action, ⭐ 4.5
                          const SizedBox(height: 15),
                          Text(
                            movie.overview, // This overview comes from TMDB
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white.withOpacity(0.8)),
                          ),
                          const SizedBox(height: 25),
                          // The CTA Button
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF7A28), // Figma Orange
                              minimumSize: const Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            ),
                            onPressed: () => _navigateToBooking(context),
                            child: const Text('Buy Ticket', style: TextStyle(fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
} */