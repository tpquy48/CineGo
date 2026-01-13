import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_colors.dart';
import '../bloc/seat_list/seat_list_cubit.dart';
import '../bloc/seat_list/seat_list_state.dart';
import '../bloc/seat_map/seat_map_bloc.dart';
import '../bloc/seat_map/seat_map_state.dart';
import '../bloc/seat_selection/seat_selection_cubit.dart';
import '../bloc/seat_selection/seat_selection_state.dart';
import '../enums/seat_stage.dart';
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
  SeatStage stage = .overview;
  final Set<String> selectedSeatIds = {};
  final TransformationController _zoomController = TransformationController();
  bool _zoomed = false;

  @override
  void initState() {
    super.initState();
    // TODO
    context.read<SeatListCubit>().loadSeats();
    // context.read<SeatMapBloc>().add(LoadSeatMapEvent(widget.showtimeId));
  }

  void onSeatTap(String id) {
    setState(() {
      if (selectedSeatIds.contains(id)) {
        selectedSeatIds.remove(id);
      } else {
        selectedSeatIds.add(id);
      }

      stage = selectedSeatIds.isEmpty ? .selecting : .selected;
    });
  }

  // Zoom into center
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
              child: BlocBuilder<SeatListCubit, SeatListState>(
                builder: (context, seatState) {
                  if (seatState.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  return BlocBuilder<SeatMapBloc, SeatMapState>(
                    builder: (context, mapState) {
                      if (mapState is! SeatMapLoaded) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      return BlocBuilder<
                        SeatSelectionCubit,
                        SeatSelectionState
                      >(
                        builder: (context, uiState) {
                          return SeatGrid(
                            seats: seatState.seats,
                            lockedSeatIds: mapState.lockedSeatIds.toSet(),
                            selectedSeatIds: uiState.selectedSeatIds.toSet(),
                            onSeatTap: context
                                .read<SeatSelectionCubit>()
                                .toggleSeat,
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),

          if (stage == .selected) BottomBuyBar(count: selectedSeatIds.length),
        ],
      ),
    );
  }
}
