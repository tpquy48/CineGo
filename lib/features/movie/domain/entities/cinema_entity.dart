import 'package:freezed_annotation/freezed_annotation.dart';

import 'session_entity.dart';

part 'cinema_entity.freezed.dart';

@freezed
sealed class CinemaEntity with _$CinemaEntity {
  const factory CinemaEntity({
    required String name,
    required String address,
    required String distance,
    required List<SessionEntity> sessions,
  }) = _CinemaEntity;
}
