class SeatLockResult {
  final String lockId;
  final DateTime expiresAt;

  const SeatLockResult({required this.lockId, required this.expiresAt});
}
