import '../../../../core/bloc/bloc.dart';

sealed class MovieEvent extends BaseEvent {}

// Event triggered when user opens the app or pulls to refresh
// class FetchNowPlaying extends MovieEvent {}

class GetPopularMoviesEvent extends MovieEvent {}
