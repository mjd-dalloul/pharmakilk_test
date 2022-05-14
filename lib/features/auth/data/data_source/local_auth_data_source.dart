import 'package:dartz/dartz.dart';
import 'package:pharmaklik/core/constant/app_constant.dart';
import 'package:pharmaklik/core/database/dao/user_dao.dart';
import 'package:pharmaklik/core/database/entities/user_table.dart';
import 'package:pharmaklik/core/helpers/shared_preferences_helper.dart';
import 'package:pharmaklik/features/auth/data/data_source/i_auth_data_source.dart';
import 'package:pharmaklik/features/auth/domain/inputs/login_model.dart';
import 'package:pharmaklik/features/auth/domain/inputs/register_model.dart';

class LocalAuthDataSource implements IAuthDataSource {
  final UserDao userDao;

  LocalAuthDataSource(this.userDao);

  @override
  Future<Unit> loginWithEmailAndPassword(LoginModel loginModel) async {
    await userDao.loginWithEmailAndPassword(loginModel.email, loginModel.password);
    return unit;
  }

  @override
  Future<Unit> registerUser(RegisterModel registerModel) async {
    await userDao.insert(UserTable.fromRegisterModel(registerModel));
    return unit;
  }

}