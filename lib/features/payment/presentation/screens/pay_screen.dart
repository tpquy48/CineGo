import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/formatters/price_formatter.dart';
import '../../../booking/presentation/bloc/booking/booking_cubit.dart';
import '../../../booking/presentation/bloc/booking/booking_state.dart';

class PayScreenArguments {
  final String date;
  final String time;

  PayScreenArguments({required this.date, required this.time});
}

class PayScreen extends StatefulWidget {
  final PayScreenArguments args;
  const PayScreen({required this.args, super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  final TextEditingController phoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashPrimary,
      appBar: AppBar(
        backgroundColor: AppColors.splashPrimary,
        title: Text(context.l10n.payForTickets),
        leading: BackButton(
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<BookingCubit, BookingState>(
          builder: (context, state) {
            if (state is! BookingLocked) {
              return const Center(child: CircularProgressIndicator());
            }

            final draft = state.draft;
            final listSeatInfo = state.draft.seats.fold<String>(
              '',
              (prev, seat) => prev.isEmpty ? seat.id : '$prev, ${seat.number}',
            );

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _infoRow(context.l10n.movie, draft.movieTitle),
                _infoRow(context.l10n.cinema, draft.cinemaName),
                // _infoRow(context.l10n.date, '6 April 2022, 14:40'),
                _infoRow(
                  context.l10n.date,
                  '${widget.args.date} - ${widget.args.time}',
                ),
                _infoRow(context.l10n.hall, draft.hallName),
                _infoRow(context.l10n.seats, listSeatInfo),
                const SizedBox(height: 16),

                const Divider(color: Colors.white12),
                ...draft.seats.map(
                  (seat) =>
                      _priceRow('Seat ${seat.id}', seat.price.formatPrice()),
                ),
                // _priceRow('1 × Adult', '120.000 đ'),
                // _priceRow('1 × Child', '90.000 đ'),
                const SizedBox(height: 6),
                _priceRow(
                  context.l10n.total,
                  draft.totalPrice.formatPrice(),
                  bold: true,
                ),

                const Spacer(),

                TextField(
                  controller: phoneCtrl,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: context.l10n.phoneNumber,
                    hintStyle: const TextStyle(color: Colors.white38),
                    filled: true,
                    fillColor: const Color(0xFF1E293B),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      // TODO: handle payment info and confirm booking
                    },
                    child: Text(
                      context.l10n.continueText,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(label, style: const TextStyle(color: Colors.white54)),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _priceRow(String label, String value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
