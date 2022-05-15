import 'package:dartz/dartz.dart';
import 'package:pharmaklik/core/failures/failure.dart';
import 'package:pharmaklik/features/auth/domain/inputs/login_model.dart';
import 'package:pharmaklik/features/auth/domain/inputs/register_model.dart';

abstract class IAuthFacade {
  Future<Either<Failure, Unit>> registerUser(RegisterModel registerModel);

  Future<Either<Failure, Unit>> loginWithEmailAndPassword(
      LoginModel loginModel);

  bool isAuthenticated();
}
