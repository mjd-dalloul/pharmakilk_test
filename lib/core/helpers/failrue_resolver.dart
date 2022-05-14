import 'package:another_flushbar/flushbar_helper.dart';
import 'package:pharmaklik/core/failures/failure.dart';

abstract class FailureResolver {

  static void resolveFailure(Failure failure) {
    FlushbarHelper.createError(message: failure.getMessage());
  }

}