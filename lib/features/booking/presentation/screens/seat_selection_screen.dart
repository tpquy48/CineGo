import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_colors.dart';
import '../bloc/seat_selection/seat_selection_cubit.dart';
import '../bloc/seat_selection/seat_selection_state.dart';
import '../widgets/bottom_buy_bar.dart';
import '../widgets/screen_curve.dart';
import '../widgets/seat_app_bar.dart';
import '../widgets/seat_grid.dart';
import '../widgets/seat_legend.dart';
import '../widgets/session_info.dart';

class SeatSelectionScreen extends StatefulWidget {
  final String showtimeId;
  const SeatSelectionScreen(this.showtimeId, {super.key});

  @override
  State<SeatSelectionScreen> createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen>
    with SingleTickerProviderStateMixin {
  // SeatStage stage = SeatStage.available;
  final TransformationController _zoomController = TransformationController();
  bool _zoomed = false;

  @override
  void initState() {
    super.initState();
    context.read<SeatSelectionCubit>().loadSeatMap(widget.showtimeId);
  }

  void _toggleZoom() {
    final matrix = Matrix4.identity();

    if (!_zoomed) {
      matrix
        ..translateByDouble(-120.0, 0.0, 0.0, 1.0)
        ..scaleByDouble(1.3, 1.3, 1.3, 1.0);
    }

    _zoomController.value = matrix;
    setState(() => _zoomed = !_zoomed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: SeatAppBar(zoomed: _zoomed, toggleZoom: _toggleZoom),
      body: Column(
        children: [
          const SessionInfo(),
          const SeatLegend(),
          const SizedBox(height: 40),
          const ScreenCurve(),
          const SizedBox(height: 24),
          Expanded(
            child: InteractiveViewer(
              transformationController: _zoomController,
              minScale: 1,
              maxScale: 2.2,
              boundaryMargin: const EdgeInsets.all(120),
              panEnabled: true,
              scaleEnabled: true,
              child: BlocBuilder<SeatSelectionCubit, SeatSelectionState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  // stage = state.selectedSeatIds.isEmpty
                  //     ? SeatStage.available
                  //     : SeatStage.selected;

                  return SeatGrid(
                    seatMap: state.seatMap,
                    selectedSeatIds: state.selectedSeatIds,
                    onSeatTap: (seatId) {
                      context.read<SeatSelectionCubit>().toggleSeat(seatId);
                    },
                  );
                },
              ),
            ),
          ),

          // if (stage == SeatStage.selected)
          BlocBuilder<SeatSelectionCubit, SeatSelectionState>(
            builder: (context, state) {
              return BottomBuyBar(
                selectedCount: state.selectedSeatIds.length,
                totalPrice: state.totalPrice,
                isLoading: state.isConfirming,
                onConfirm: () {
                  context.read<SeatSelectionCubit>().confirmSelection(
                    widget.showtimeId,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
