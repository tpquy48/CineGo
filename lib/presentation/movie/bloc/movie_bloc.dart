import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/movie/usecases/get_popular_movies_usecase.dart';
import 'movie_event.dart';
import 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetPopularMoviesUsecase _getPopularMoviesUsecase;

  MovieBloc(this._getPopularMoviesUsecase) : super(MovieInitial()) {
    // Register the event handler for fetching popular movies
    on<GetPopularMoviesEvent>((event, emit) async {
      // Show loading indicator
      emit(MovieLoading());
      try {
        // Fetch data from repository
        final movies = await _getPopularMoviesUsecase.call();
        emit(MovieLoaded(movies));
      } catch (e) {
        log(e.toString());
        emit(MovieError(e.toString()));
      }
    });
  }
}
