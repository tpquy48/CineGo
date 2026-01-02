import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_observer.dart';
import 'core/core.dart';
import 'core/di/service_locator.dart' as di;
import 'presentation/home/screens/home_screen.dart';
import 'presentation/home/screens/splash_screen.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `runApp` works properly.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Dependency Injection
  await di.init();

  // Observer
  Bloc.observer = AppBlocObserver();

  runApp(const CineGoApp());
}

class CineGoApp extends StatelessWidget {
  const CineGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routerConfig: appRouter,
      // home: const SplashScreen(),
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
