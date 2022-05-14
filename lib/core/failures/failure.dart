abstract class Failure {
  const Failure();
}

class FailureWithMessageFromServer extends Failure {
  final String message;
  const FailureWithMessageFromServer(this.message);
}