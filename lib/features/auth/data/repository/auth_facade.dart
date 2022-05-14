import 'package:dartz/dartz.dart';
import 'package:pharmaklik/core/constant/app_constant.dart';
import 'package:pharmaklik/core/failures/failure.dart';
import 'package:pharmaklik/core/helpers/shared_preferences_helper.dart';
import 'package:pharmaklik/features/auth/data/data_source/i_auth_data_source.dart';
import 'package:pharmaklik/features/auth/domain/inputs/login_model.dart';
import 'package:pharmaklik/features/auth/domain/inputs/register_model.dart';
import 'package:pharmaklik/features/auth/domain/repository/i_auth_facade.dart';

class AuthFacade implements IAuthFacade {
  final IAuthDataSource localDataSource;
  final SharedPreferencesHelper sharedPreferencesHelper;

  const AuthFacade(
    this.localDataSource,
    this.sharedPreferencesHelper,
  );

  @override
  Future<bool> isAuthenticated() async {
    return sharedPreferencesHelper.getBool(AppConstant.authenticated);
  }

  @override
  Future<Either<Failure, Unit>> loginWithEmailAndPassword(
      LoginModel loginModel) async {
    try {
      final ret = await localDataSource.loginWithEmailAndPassword(loginModel);
      sharedPreferencesHelper.saveBool(AppConstant.authenticated, true);
      return right(ret);
    } on Failure catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> registerUser(
      RegisterModel registerModel) async {
    try {
      final ret = (await localDataSource.registerUser(registerModel));
      sharedPreferencesHelper.saveBool(AppConstant.authenticated, true);
      return right(ret);
    } on Failure catch (e) {
      return left(e);
    }
  }
}
