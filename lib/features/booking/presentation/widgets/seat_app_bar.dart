import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';

class SeatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool zoomed;
  final void Function() toggleZoom;
  final String movieTitle;
  final String cinemaName;

  const SeatAppBar({
    required this.toggleZoom,
    required this.movieTitle,
    required this.cinemaName,
    this.zoomed = false,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarBg,
      elevation: 0,
      leading: BackButton(onPressed: () => context.pop()),
      title: Column(
        children: [
          Text(
            movieTitle,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 2),
          Text(
            cinemaName,
            style: const TextStyle(fontSize: 11, color: Colors.white54),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(zoomed ? Icons.fullscreen_exit : Icons.fullscreen),
          onPressed: toggleZoom,
        ),
      ],
    );
  }
}
