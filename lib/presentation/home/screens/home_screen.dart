import 'package:flutter/material.dart';

import '../../movie/widgets/movie_card.dart';

class Movie {
  final String title;
  final String genre;
  final String rating;
  final String poster;

  Movie({required this.title, required this.genre, required this.rating, required this.poster});
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              _TopBar(),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Now in cinemas',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Icon(Icons.search, size: 24),
                ],
              ),
              SizedBox(height: 20),
              Expanded(child: MovieGrid()),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: const Color(0xFFFF7A1A),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'C',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 12),
        const Row(
          children: [
            Icon(Icons.location_on, size: 16, color: Colors.white70),
            SizedBox(width: 4),
            Text('Nur-Sultan', style: TextStyle(fontSize: 13)),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white24),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text('Eng', style: TextStyle(fontSize: 13)),
        ),
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFFF7A1A),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text('Log in', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
        ),
      ],
    );
  }
}

class MovieGrid extends StatelessWidget {
  const MovieGrid({super.key});

  static final movies = [
    Movie(
      title: 'The Batman',
      genre: 'Action',
      rating: '8.1',
      poster: 'https://image.tmdb.org/t/p/w500/74xTEgt7R36Fpooo50r9T25onhq.jpg',
    ),
    Movie(
      title: 'Uncharted',
      genre: 'Adventure',
      rating: '7.9',
      poster: 'https://image.tmdb.org/t/p/w500/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg',
    ),
    Movie(
      title: 'The Exorcism of God',
      genre: 'Horror',
      rating: '5.6',
      poster: 'https://image.tmdb.org/t/p/w500/pcqoB3i6Kf3Vt9uRUX5f5iY9z6f.jpg',
    ),
    Movie(
      title: 'Turning Red',
      genre: 'Comedy',
      rating: '7.1',
      poster: 'https://image.tmdb.org/t/p/w500/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg',
    ),
    Movie(
      title: 'Spider-Man: No Way Home',
      genre: 'Action',
      rating: '8.1',
      poster: 'https://image.tmdb.org/t/p/w500/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg',
    ),
    Movie(
      title: 'Morbius',
      genre: 'Action',
      rating: '5.3',
      poster: 'https://image.tmdb.org/t/p/w500/6JjfSchsU6daXk2AKX8EEBjO3Fm.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: movies.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 20,
        childAspectRatio: 0.58,
      ),
      itemBuilder: (_, index) {
        return MovieCard(movie: movies[index]);
      },
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => sl<MovieBloc>()..add(GetPopularMoviesEvent()),
//       child: Scaffold(
//         appBar: AppBar(title: const Text('CineGo')),
//         body: BlocBuilder<MovieBloc, MovieState>(
//           builder: (context, state) {
//             if (state is MovieLoading) {
//               return const CircularProgressIndicator();
//             }
//             // Inside your BlocBuilder in home_screen.dart
//             if (state is MovieLoaded) {
//               return GridView.builder(
//                 padding: const EdgeInsets.all(16),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 0.7,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 16,
//                 ),
//                 itemCount: state.movies.length,
//                 itemBuilder: (context, index) {
//                   final movie = state.movies[index];
//                   return MovieCard(
//                     movie: movie,
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => MovieDetailScreen(movie: movie)),
//                       );
//                     },
//                   );
//                 },
//               );
//             }
//             if (state is MovieError) {
//               return Center(child: Text(state.message));
//             }
//             return const SizedBox();
//           },
//         ),
//       ),
//     );
//   }
// }
