import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/l10n/l10n.dart';
import '../models/movie_detail_ui_model.dart';

// import '../../seat_selection/screens/seat_selection_screen.dart';

class AboutTab extends StatelessWidget {
  final MovieDetailUiModel movie;
  final VoidCallback onGoToSessions;

  const AboutTab({
    required this.movie,
    required this.onGoToSessions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _VideoPreview(movie.backdropUrl),
          const SizedBox(height: 20),
          _RatingsRow(movie),
          const SizedBox(height: 16),
          Text(
            movie.overview,
            style: context.textTheme.bodyMedium!.copyWith(
              color: Colors.white70,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 20),
          _InfoItem(
            context.l10n.certificate,
            valueWidget: _Badge(movie.ageRating),
          ),
          _InfoItem(context.l10n.runtime, value: movie.runtime),
          _InfoItem(context.l10n.release, value: movie.releaseYear),
          _InfoItem(context.l10n.genre, value: movie.genres),
          // _InfoItem(context.l10n.director, value: movie.),
          // _InfoItem(
          //   context.l10n.cast,
          //   value:
          //       'Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell, Paul Dano...',
          // ),
          const SizedBox(height: 30),
          _PrimaryButton(onGoToSessions),
        ],
      ),
    );
  }
}

class _VideoPreview extends StatelessWidget {
  final String videoUrl;

  const _VideoPreview(this.videoUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            videoUrl,
            // 'https://image.tmdb.org/t/p/w780/9yBVqNruk6Ykrwc32qrK2TIE5xw.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: 56,
            height: 56,
            decoration: const BoxDecoration(
              color: Colors.black54,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.play_arrow, size: 32),
          ),
        ],
      ),
    );
  }
}

class _RatingsRow extends StatelessWidget {
  final MovieDetailUiModel movie;

  const _RatingsRow(this.movie);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _RatingBox(movie.imdbScore, context.l10n.tmdb)),
        const SizedBox(width: 12),
        Expanded(
          child: _RatingBox(movie.kinopoiskScore, context.l10n.kinopoisk),
        ),
      ],
    );
  }
}

class _RatingBox extends StatelessWidget {
  final String value;
  final String label;

  const _RatingBox(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.appBarBg,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: context.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Colors.white54),
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String? value;
  final Widget? valueWidget;

  const _InfoItem(this.label, {this.value, this.valueWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: Text(
              label,
              style: const TextStyle(color: Colors.white54, fontSize: 13),
            ),
          ),
          Expanded(
            child:
                valueWidget ??
                Text(value ?? '', style: const TextStyle(fontSize: 13)),
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;

  const _Badge(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  final VoidCallback onGoToSessions;
  const _PrimaryButton(this.onGoToSessions);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: onGoToSessions,
        child: Text(
          context.l10n.selectSession,
          style: context.textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
