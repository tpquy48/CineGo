import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/core.dart';
import 'core/di/service_locator.dart' as di;
import 'core/l10n/app_localizations.dart';
import 'core/l10n/l10n.dart';
import 'core/navigation/app_router.dart';
import 'core/observer/app_observer.dart';

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
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routerConfig: appRouter,
      supportedLocales: L10n.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
