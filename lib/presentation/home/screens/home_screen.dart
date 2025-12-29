import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart' show Img;
import '../../../core/di/service_locator.dart';
import '../../movie/bloc/movie_bloc.dart';
import '../../movie/bloc/movie_event.dart';
import '../../movie/bloc/movie_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MovieBloc>()..add(GetPopularMoviesEvent()),
      child: Scaffold(
        appBar: AppBar(title: const Text('CineGo')),
        body: BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) {
            if (state is MovieLoading) {
              return const CircularProgressIndicator();
            }
            if (state is MovieLoaded) {
              return ListView.builder(
                itemBuilder: (context, index) => ListTile(
                  title: Text(state.movies[index].title),
                  leading: Image.network(Img.imageNetWorkBaseUrl + state.movies[index].posterPath),
                ),
                itemCount: state.movies.length,
              );
            }
            if (state is MovieError) {
              return Center(child: Text(state.message));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
