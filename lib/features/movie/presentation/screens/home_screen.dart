import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../../core/extensions/context_text_theme.dart';
import '../../../../core/l10n/l10n.dart';
import '../cubit/home_movie_cubit.dart';
import '../cubit/home_movie_state.dart';
import '../widgets/movie_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = ScrollController();
  bool _initialized = false;

  @override
  void initState() {
    super.initState();

    // Note: loadInitial() in initState without safety
    // Avoid multiple calls when widget rebuilds in navigation stacks
    // context.read<HomeMovieCubit>().loadInitial();

    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    final cubit = context.read<HomeMovieCubit>();

    if (_controller.position.pixels >= _controller.position.maxScrollExtent - 200) {
      cubit.loadMore();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Safe initial load
    if (!_initialized) {
      context.read<HomeMovieCubit>().loadInitial();
      _initialized = true;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              const _TopBar(),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.l10n.nowInCinemas,
                    style: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const Icon(Icons.search, size: 24),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: BlocBuilder<HomeMovieCubit, HomeMovieState>(
                  builder: (context, state) {
                    if (state.isLoading && state.movies.isEmpty) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    // return _MovieGrid(state.movies, state.hasReachedMax, _controller);
                    return CustomScrollView(
                      controller: _controller,
                      slivers: [
                        // Movie grid
                        SliverGrid(
                          delegate: SliverChildBuilderDelegate(
                            (_, index) => MovieCard(movie: state.movies[index]),
                            childCount: state.movies.length,
                          ),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12,
                            childAspectRatio: 0.65,
                          ),
                        ),

                        // Load more indicator
                        if (state.isLoadingMore)
                          const SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 24),
                              child: Center(child: CircularProgressIndicator()),
                            ),
                          ),

                        // Bottom spacing when finished
                        if (state.hasReachedMax)
                          const SliverToBoxAdapter(child: SizedBox(height: 24)),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'C',
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        const Row(
          children: [
            Icon(Icons.location_on, size: 16, color: Colors.white70),
            SizedBox(width: 4),
            Text('Nur-Sultan', style: TextStyle(fontSize: 13)),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white24),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text('Eng', style: context.textTheme.labelMedium?.copyWith(fontSize: 13)),
        ),
        const SizedBox(width: 12),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            context.l10n.login,
            style: context.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}

/* class _MovieGrid extends StatelessWidget {
  final List<MovieEntity> movies;
  final bool hasReachedMax;
  final ScrollController controller;
  const _MovieGrid(this.movies, this.hasReachedMax, this.controller);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: context.read<HomeMovieCubit>().refresh,
      child: GridView.builder(
        controller: controller,
        itemCount: hasReachedMax ? movies.length : movies.length + 1,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 14,
          mainAxisSpacing: 20,
          childAspectRatio: 0.58,
        ),
        itemBuilder: (_, index) {
          if (index >= movies.length) {
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            );
          }
          return MovieCard(movie: movies[index]);
        },
      ),
    );
  }
}
 */
