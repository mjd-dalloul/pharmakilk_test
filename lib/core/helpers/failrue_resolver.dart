import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:pharmaklik/core/failures/failure.dart';

abstract class FailureResolver {
  static void resolveFailure({
    required Failure failure,
    required BuildContext context,
  }) {
    FlushbarHelper.createError(message: failure.getMessage()).show(context);
  }
}
