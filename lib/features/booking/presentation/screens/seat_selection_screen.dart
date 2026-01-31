import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigation/app_navigator.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/booking/booking_cubit.dart';
import '../bloc/booking/booking_state.dart';
import '../bloc/seat_selection/seat_selection_cubit.dart';
import '../bloc/seat_selection/seat_selection_state.dart';
import '../widgets/bottom_buy_bar.dart';
import '../widgets/screen_curve.dart';
import '../widgets/seat_app_bar.dart';
import '../widgets/seat_grid.dart';
import '../widgets/seat_legend.dart';
import '../widgets/session_info.dart';

class SeatSelectionArguments {
  final String movieId;
  final String showtimeId;
  final String date;
  final String time;
  final String movieTitle;
  final String cinemaName;
  final String hallName;
  final String filterDate;

  SeatSelectionArguments({
    required this.movieId,
    required this.showtimeId,
    required this.date,
    required this.time,
    required this.movieTitle,
    required this.cinemaName,
    required this.hallName,
    required this.filterDate,
  });
}

class SeatSelectionScreen extends StatefulWidget {
  final SeatSelectionArguments args;
  const SeatSelectionScreen({required this.args, super.key});

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
    context.read<SeatSelectionCubit>().loadSeatMap(widget.args.showtimeId);
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
    return BlocListener<BookingCubit, BookingState>(
      listener: (context, state) {
        if (state is BookingLocked) {
          context.openPayment(
            movieId: widget.args.movieId,
            movieTitle: widget.args.movieTitle,
            showtimeId: widget.args.showtimeId,
            cinemaName: widget.args.cinemaName,
            hallName: widget.args.hallName,
            date: widget.args.date,
            time: widget.args.time,
          );
        }

        if (state is BookingFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }

        // if (state.confirmBookingStage == ConfirmBookingStage.confirmed) {
        //   context.go('/booking/confirmation');
        // }
      },
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: AppColors.secondary,
            appBar: SeatAppBar(
              zoomed: _zoomed,
              toggleZoom: _toggleZoom,
              movieTitle: widget.args.movieTitle,
              cinemaName: widget.args.cinemaName,
            ),
            body: Column(
              children: [
                SessionInfo(date: widget.args.date, time: widget.args.time),
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
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        // stage = state.selectedSeatIds.isEmpty
                        //     ? SeatStage.available
                        //     : SeatStage.selected;

                        return SeatGrid(
                          seatMap: state.seatMap,
                          selectedSeatIds: state.selectedSeatIds,
                          onSeatTap: (seatId) {
                            context.read<SeatSelectionCubit>().toggleSeat(
                              seatId,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),

                BlocBuilder<SeatSelectionCubit, SeatSelectionState>(
                  builder: (context, seatState) {
                    return BlocBuilder<BookingCubit, BookingState>(
                      builder: (context, bookingState) {
                        return BottomBuyBar(
                          seatArgs: widget.args,
                          selectedCount: seatState.selectedSeatIds.length,
                          totalPrice: seatState.totalPrice,
                          isLoading: bookingState is BookingLocking,
                          seats: seatState.seatMap.seats
                              .where(
                                (seat) =>
                                    seatState.selectedSeatIds.contains(seat.id),
                              )
                              .toList(),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          BlocBuilder<BookingCubit, BookingState>(
            builder: (context, state) {
              if (state is BookingLocking) {
                return const ColoredBox(
                  color: Colors.black45,
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
