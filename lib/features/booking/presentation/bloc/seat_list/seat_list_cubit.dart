import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_seats_usecase.dart';
import '../../mappers/seat_ui_mapper.dart';
import 'seat_list_state.dart';

class SeatListCubit extends Cubit<SeatListState> {
  final GetSeatsUsecase getSeats;

  SeatListCubit(this.getSeats) : super(const SeatListState());

  Future<void> loadSeats() async {
    emit(const SeatListState(loading: true));
    final entities = await getSeats.call();
    final seats = entities
        .map((e) => SeatUiMapper.fromEntity(e, blocked: false, selected: false))
        .toList();
    emit(SeatListState(seats: seats));
  }
}
