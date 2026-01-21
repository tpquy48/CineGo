abstract class Failure {
  final String message;

  const Failure(this.message);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network error']);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server error']);
}

class SeatAlreadyLockedFailure extends Failure {
  const SeatAlreadyLockedFailure()
    : super('One or more seats are already locked');
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'Unknown error']);
}
