import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_popular_movies_usecase.dart';
import 'home_movie_state.dart';

class HomeMovieCubit extends Cubit<HomeMovieState> {
  final GetPopularMoviesUsecase getMovies;

  HomeMovieCubit(this.getMovies) : super(HomeMovieState.initial());

  Future<void> loadInitial() async {
    emit(
      state.copyWith(
        isLoading: true,
        page: 1,
        hasReachedMax: false,
        error: null,
      ),
    );

    try {
      final movies = await getMovies(page: 1);

      emit(
        state.copyWith(
          movies: movies,
          page: 2,
          isLoading: false,
          hasReachedMax: movies.isEmpty,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> loadMore() async {
    // HARD GUARDS
    if (state.isLoadingMore || state.hasReachedMax || state.isLoading) {
      return;
    }

    emit(state.copyWith(isLoadingMore: true));

    try {
      final movies = await getMovies(page: state.page);

      emit(
        state.copyWith(
          movies: [...state.movies, ...movies],
          page: state.page + 1,
          isLoadingMore: false,
          hasReachedMax: movies.isEmpty,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoadingMore: false, error: e.toString()));
    }
  }

  Future<void> refresh() async {
    await loadInitial();
  }

  // Future<void> saveMemoryCache(List<MovieEntity> movies) {
  // }
}
