import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_entity.freezed.dart';

@freezed
sealed class SessionEntity with _$SessionEntity {
  const factory SessionEntity({
    required String time,
    required String format,
    required Map<String, String> prices,
  }) = _SessionEntity;
}
