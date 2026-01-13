import '../../../../../core/bloc/base_state.dart';
import '../../models/seat_ui_model.dart';

class SeatListState extends BaseState {
  final List<SeatUiModel> seats;
  final bool loading;

  const SeatListState({this.seats = const [], this.loading = false});

  @override
  List<Object?> get props => [seats, loading];
}
