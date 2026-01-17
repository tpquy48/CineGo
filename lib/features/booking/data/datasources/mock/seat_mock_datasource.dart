import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';

import '../../../../../core/constants/constants.dart';
import '../../models/seat_map_model.dart';
import '../../models/seat_model.dart';

sealed class SeatMockDatasource {
  Future<SeatMapModel> loadSeatMap(String showtimeId);
  Future<List<SeatModel>> getSeatsByIds(
    String showtimeId,
    List<String> seatIds,
  );
}

class SeatMockDatasourceImpl implements SeatMockDatasource {
  @override
  Future<SeatMapModel> loadSeatMap(String showtimeId) async {
    try {
      final raw = await rootBundle.loadString(MockApi.seats);
      final listShowtimeSeats = jsonDecode(raw);

      final seatMap = (listShowtimeSeats as List)
          .map((e) => SeatMapModel.fromJson(e))
          .firstWhere((sm) => sm.showtimeId == showtimeId);

      return seatMap;
    } catch (e) {
      log('Error loading seats from SeatMockDatasource', error: e);
      rethrow;
    }
  }

  @override
  Future<List<SeatModel>> getSeatsByIds(
    String showtimeId,
    List<String> seatIds,
  ) async {
    try {
      final seatMap = await loadSeatMap(showtimeId);
      final seats = seatMap.seats
          .where((seat) => seatIds.contains(seat.id))
          .toList();
      return seats;
    } catch (e) {
      throw Exception('Error getting seats by IDs from SeatMockDatasource: $e');
    }
  }
}
