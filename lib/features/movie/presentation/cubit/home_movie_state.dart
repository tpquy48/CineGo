import '../../domain/entities/movie_entity.dart';

class HomeMovieState {
  final List<MovieEntity> movies;
  final int page;
  final bool isLoading;
  final bool isLoadingMore;
  final bool hasReachedMax;
  final String? error;

  const HomeMovieState({
    required this.movies,
    required this.page,
    required this.isLoading,
    required this.isLoadingMore,
    required this.hasReachedMax,
    this.error,
  });

  factory HomeMovieState.initial() {
    return const HomeMovieState(
      movies: [],
      page: 1,
      isLoading: false,
      isLoadingMore: false,
      hasReachedMax: false,
      error: null,
    );
  }

  HomeMovieState copyWith({
    List<MovieEntity>? movies,
    int? page,
    bool? isLoading,
    bool? isLoadingMore,
    bool? hasReachedMax,
    String? error,
  }) {
    return HomeMovieState(
      movies: movies ?? this.movies,
      page: page ?? this.page,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      error: error,
    );
  }
}
