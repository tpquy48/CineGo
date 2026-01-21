import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/l10n/l10n.dart';
import '../bloc/movie_detail_bloc.dart';
import '../bloc/movie_detail_state.dart';
import '../mappers/movie_detail_ui_mapper.dart';
import '../widgets/about_tab.dart';
import '../widgets/sessions_tab.dart';

class MovieDetailScreen extends StatefulWidget {
  final String movieId;
  const MovieDetailScreen({required this.movieId, super.key});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void goToSessionsTab() {
    _tabController.index = 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailBloc, MovieDetailState>(
      builder: (context, state) {
        if (state is MovieDetailError) {
          return Scaffold(body: Center(child: Text('Error: ${state.message}')));
        } else if (state is! MovieDetailLoaded) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final movie = state.movie.toUiModel();

        return DefaultTabController(
          length: 2,
          child: Scaffold(
            // backgroundColor: context.colors.secondary,
            backgroundColor: AppColors.secondary,
            appBar: AppBar(
              backgroundColor: AppColors.appBarBg,
              elevation: 0,
              leading: const BackButton(),
              title: Text(
                movie.title,
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: AppColors.primary,
                indicatorWeight: 3,
                labelColor: AppColors.primary,
                unselectedLabelColor: Colors.white54,
                tabs: [
                  Tab(text: context.l10n.about),
                  Tab(text: context.l10n.sessions),
                ],
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: [
                AboutTab(movie: movie, onGoToSessions: goToSessionsTab),
                SessionsTab(movieDetail: state.movie),
              ],
            ),
          ),
        );
      },
    );
  }
}
