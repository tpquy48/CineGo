import 'package:equatable/equatable.dart';

abstract class MovieEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Event triggered when user opens the app or pulls to refresh
class FetchNowPlaying extends MovieEvent {}
