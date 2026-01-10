import '../../../../core/bloc/bloc.dart';
import '../../domain/entities/movie_detail_entity.dart';

sealed class MovieDetailState extends BaseState {}

class MovieDetailInitial extends MovieDetailState {}

class MovieDetailLoading extends MovieDetailState {}

class MovieDetailLoaded extends MovieDetailState {
  final MovieDetailEntity movie;
  MovieDetailLoaded(this.movie);

  @override
  List<Object?> get props => [movie];
}

class MovieDetailError extends MovieDetailState {
  final String message;
  MovieDetailError(this.message);

  @override
  List<Object?> get props => [message];
}
