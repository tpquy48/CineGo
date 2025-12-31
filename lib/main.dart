import 'package:flutter/material.dart';

import 'core/di/service_locator.dart' as di;
import 'presentation/home/screens/home_screen.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `runApp` works properly.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Dependency Injection
  await di.init();

  runApp(const CineGoApp());
}

class CineGoApp extends StatelessWidget {
  const CineGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CineGo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );

    // return RepositoryProvider(
    //   create: (context) => MovieRepository(),
    //   child: BlocProvider(
    //     create: (context) =>
    //         MovieBloc(movieRepository: context.read<MovieRepository>())
    //           ..add(FetchNowPlaying()), // Fetch movies data immediately on startup,
    //     child: MaterialApp(
    //       title: 'CineGo',
    //       debugShowCheckedModeBanner: false,
    //       theme: ThemeData.dark(),
    //       home: const HomeScreen(),
    //     ),
    //   ),
    // );
  }
}
