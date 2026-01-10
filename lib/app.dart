import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/core.dart';
import 'core/di/service_locator.dart';
import 'core/l10n/app_localizations.dart';
import 'core/l10n/l10n.dart';
import 'core/navigation/app_router.dart';
import 'core/theme/app_theme.dart';
import 'features/movie/presentation/bloc/movie_detail_bloc.dart';
import 'features/movie/presentation/cubit/home_movie_cubit.dart';

class CineGoApp extends StatelessWidget {
  const CineGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (_) => sl<MovieDetailBloc>()..add(const LoadMovieDetail())),
        // BlocProvider(create: (_) => sl<MovieDetailBloc>()),
        BlocProvider(create: (_) => sl<HomeMovieCubit>()),
      ],
      child: MaterialApp.router(
        title: AppConstants.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        routerConfig: appRouter,
        supportedLocales: L10n.supportedLocales,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
