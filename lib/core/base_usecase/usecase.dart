import '../failures/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params extends BaseParams> {
  Future<Either<Failure, Type>> call(Params params); //callable object
  const UseCase();
}

abstract class BaseParams {}

class NoParams extends BaseParams {
  // no need to create a new object every time we call a use case with NoParams,
  // so we make it singleton class.
  static NoParams? instance;

  NoParams._();

  factory NoParams() {
    instance ??= NoParams._();
    return instance!;
  }
}
