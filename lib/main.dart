import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'core/cache/genre_cache.dart';
import 'core/di/service_locator.dart' as di;
import 'core/observer/app_observer.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `runApp` works properly.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Dependency Injection
  await di.init();

  // preload genres
  unawaited(di.sl<GenreCache>().preload());

  // Observer
  Bloc.observer = AppBlocObserver();

  runApp(const CineGoApp());
}
