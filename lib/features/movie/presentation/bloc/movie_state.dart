import '../../../../core/bloc/bloc.dart';
import '../../domain/entities/movie_entity.dart';

sealed class MovieState extends BaseState {}

class MovieInitial extends MovieState {}

class MovieLoading extends MovieState {}

class MovieLoaded extends MovieState {
  final List<MovieEntity> movies;
  MovieLoaded(this.movies);

  @override
  List<Object?> get props => [movies];
}

class MovieDetailLoaded extends MovieState {
  // final MovieDetail movie;
  final MovieEntity movie;

  MovieDetailLoaded(this.movie);

  @override
  List<Object?> get props => [movie];
}

class MovieError extends MovieState {
  final String message;
  MovieError(this.message);

  @override
  List<Object?> get props => [message];
}
