import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/navigation/app_navigator.dart';
import '../../domain/entities/movie_entity.dart';

class MovieCard extends StatelessWidget {
  final MovieEntity movie;

  const MovieCard({required this.movie, super.key});

  String displayGenre(List<String> genreNames) {
    if (genreNames.isEmpty) {
      return ' ';
    }
    if (genreNames.length > 1) {
      return '${genreNames[0]}, ${genreNames[1]}';
    }
    return genreNames[0];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              GestureDetector(
                onTap: () => context.openMovieDetail(movie.id.toString()),
                child: AspectRatio(
                  aspectRatio: 3.1 / 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      movie.posterPath,
                      // width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    movie.voteAverage.toString(),
                    style: context.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          movie.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        const SizedBox(height: 4),
        Text(
          // 'Action', 'Adventure', 'Horror'
          displayGenre(movie.genreNames),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12, color: Colors.white54),
        ),
        //  Text(
        //     "⭐ ${movie.voteAverage.toStringAsFixed(1)}",
        //     style: const TextStyle(color: Colors.amber),
        //   ),
      ],
    );
  }
}
