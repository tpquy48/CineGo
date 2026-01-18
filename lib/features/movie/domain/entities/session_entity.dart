import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_entity.freezed.dart';

@freezed
sealed class SessionEntity with _$SessionEntity {
  const factory SessionEntity({
    required String showtimeId,
    required int movieId,
    required String cinemaId,
    required String time,
    required String format,
    required Map<String, String> prices,
  }) = _SessionEntity;
}
