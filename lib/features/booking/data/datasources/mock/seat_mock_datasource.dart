import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';

import '../../../../../core/constants/constants.dart';
import '../../models/seat_map_model.dart';

sealed class SeatMockDatasource {
  Future<SeatMapModel> loadSeatMap(String showtimeId);
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
}
