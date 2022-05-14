abstract class Failure {
  String getMessage();
  const Failure();
}

class FailureWithMessageFromServer extends Failure {
  final String message;
  const FailureWithMessageFromServer(this.message);

  @override
  String getMessage() {
    return message;
  }
}