import 'package:dartz/dartz.dart';

import '../../domain/inputs/login_model.dart';
import '../../domain/inputs/register_model.dart';

abstract class IAuthDataSource {
  Future<Unit> registerUser(RegisterModel registerModel);

  Future<Unit> loginWithEmailAndPassword(
      LoginModel loginModel);
}