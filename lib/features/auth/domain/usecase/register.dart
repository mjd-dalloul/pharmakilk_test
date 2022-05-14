import 'package:dartz/dartz.dart';
import 'package:pharmaklik/core/base_usecase/usecase.dart';
import 'package:pharmaklik/core/failures/failure.dart';
import 'package:pharmaklik/features/auth/domain/inputs/register_model.dart';
import 'package:pharmaklik/features/auth/domain/repository/i_auth_facade.dart';

class Register implements UseCase<Unit, RegisterModel> {
  final IAuthFacade authFacade;

  const Register(this.authFacade);

  @override
  Future<Either<Failure, Unit>> call(RegisterModel model) async {
    return authFacade.registerUser(model);
  }
}
