import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class SeatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool zoomed;
  final void Function() toggleZoom;

  const SeatAppBar({required this.toggleZoom, this.zoomed = false, super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarBg,
      elevation: 0,
      leading: const BackButton(),
      title: const Column(
        children: [
          Text(
            'Lotte Cinema 7',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 2),
          Text(
            'The Batman',
            style: TextStyle(fontSize: 11, color: Colors.white54),
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
