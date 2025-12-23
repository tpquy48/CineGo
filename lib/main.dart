import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'data/repositories/movie_repository.dart';
import 'logic/movie_bloc.dart';
import 'logic/movie_event.dart';
import 'presentation/screens/home_screen.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `runApp` works properly.
  WidgetsFlutterBinding.ensureInitialized();

  // Load env file before running the app
  await dotenv.load(fileName: '.env');
  runApp(
    RepositoryProvider(
      create: (context) => MovieRepository(),
      child: BlocProvider(
        create: (context) => MovieBloc(
          movieRepository: context.read<MovieRepository>(),
        )..add(FetchNowPlaying()), // Fetch movies data immediately on startup,
        child: MaterialApp(
          title: 'CineGo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home: const HomeScreen(),
        ),
      ),
    ),
  );
}
