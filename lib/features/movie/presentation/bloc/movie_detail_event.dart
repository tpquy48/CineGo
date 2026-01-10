import '../../../../core/bloc/bloc.dart';

sealed class MovieDetailEvent extends BaseEvent {
  const MovieDetailEvent();
}

class LoadMovieDetail extends MovieDetailEvent {
  final String movieId;
  const LoadMovieDetail(this.movieId);

  @override
  List<Object?> get props => [movieId];
}
