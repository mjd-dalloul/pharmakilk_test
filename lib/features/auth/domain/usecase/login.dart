import 'package:dartz/dartz.dart';
import 'package:pharmaklik/core/base_usecase/usecase.dart';
import 'package:pharmaklik/core/failures/failure.dart';
import 'package:pharmaklik/features/auth/domain/inputs/login_model.dart';
import 'package:pharmaklik/features/auth/domain/repository/i_auth_facade.dart';

class Login implements UseCase<Unit, LoginModel> {
  final IAuthFacade authFacade;
  const Login(this.authFacade);
  @override
  Future<Either<Failure, Unit>> call(LoginModel model) async {
      return authFacade.loginWithEmailAndPassword(model);
  }
}