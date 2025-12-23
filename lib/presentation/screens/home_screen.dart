import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/movie_model.dart';
import '../../logic/movie_bloc.dart';
import '../../logic/movie_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Tracks the current movie in focus

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          if (state is MovieLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.amber),
            );
          } else if (state is MovieLoaded) {
            final movies = state.movies;

            return Stack(
              children: [
                // 1. Background Blur Effect
                _buildBackground(movies[_currentIndex]),

                // 2. Foreground Content
                Column(
                  children: [
                    const SizedBox(height: 60),
                    const Text(
                      'CineGo',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 30),

                    // 3. Carousel Slider
                    CarouselSlider.builder(
                      itemCount: movies.length,
                      options: CarouselOptions(
                        height: 450,
                        enlargeCenterPage: true, // Make the center item larger
                        viewportFraction: 0.7,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex =
                                index; // Update background when slide changes
                          });
                        },
                      ),
                      itemBuilder: (context, index, realIndex) {
                        return _buildMovieCard(movies[index]);
                      },
                    ),

                    const SizedBox(height: 30),
                    // Movie Title & Info
                    Text(
                      movies[_currentIndex].title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 20),
                        const SizedBox(width: 5),
                        Text(
                          '${movies[_currentIndex].voteAverage} / 10',
                          style: const TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          }
          return const Center(child: Text('Something went wrong!'));
        },
      ),
    );
  }

  // Build the blurred background based on the current movie's poster
  Widget _buildBackground(Movie movie) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(movie.posterPath),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), // Blur intensity
        child: Container(
          color: Colors.black.withValues(alpha: 0.5), // Darken the background
        ),
      ),
    );
  }

  // Build each individual movie poster card
  Widget _buildMovieCard(Movie movie) {
    return Hero(
      tag: movie.id, // Important for the transition to detail screen
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
          image: DecorationImage(
            image: NetworkImage(movie.posterPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
