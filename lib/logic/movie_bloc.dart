import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repositories/movie_repository.dart';
import 'movie_event.dart';
import 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepository movieRepository;

  MovieBloc({required this.movieRepository}) : super(MovieLoading()) {
    // Register the event handler for FetchNowPlaying
    on<FetchNowPlaying>((event, emit) async {
      emit(MovieLoading()); // Show loading indicator
      try {
        // Fetch data from repository
        final movies = await movieRepository.getNowPlaying();
        emit(MovieLoaded(movies)); // Success state
      } catch (e) {
        log(e.toString());
        emit(MovieError(e.toString())); // Error state
      }
    });
  }
}
