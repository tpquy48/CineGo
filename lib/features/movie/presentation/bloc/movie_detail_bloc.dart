import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_movie_detail_usecase.dart';
import 'movie_detail_event.dart';
import 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetailUsecase _getMovieDetail;

  MovieDetailBloc(this._getMovieDetail) : super(MovieDetailInitial()) {
    // Register an event handler
    on<LoadMovieDetail>(_onLoad);
  }

  Future<void> _onLoad(LoadMovieDetail event, Emitter<MovieDetailState> emit) async {
    emit(MovieDetailLoading());

    try {
      final movie = await _getMovieDetail(event.movieId);
      emit(MovieDetailLoaded(movie));
    } catch (e) {
      emit(MovieDetailError('Failed to load movie detail'));
    }
  }
}
