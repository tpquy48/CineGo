import 'failure.dart';

class DatabaseFailure extends Failure {
  final Object? exception;
  final StackTrace? stackTrace;

  const DatabaseFailure({
    required String message,
    this.exception,
    this.stackTrace,
  }) : super(message);
}
