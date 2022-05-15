import 'package:get_it/get_it.dart';
import 'package:pharmaklik/core/database/dao/user_dao.dart';
import 'package:pharmaklik/core/helpers/shared_preferences_helper.dart';
import 'package:pharmaklik/features/auth/data/data_source/i_auth_data_source.dart';
import 'package:pharmaklik/features/auth/data/data_source/local_auth_data_source.dart';
import 'package:pharmaklik/features/auth/data/repository/auth_facade.dart';
import 'package:pharmaklik/features/auth/domain/repository/i_auth_facade.dart';
import 'package:pharmaklik/features/auth/domain/usecase/login.dart';
import 'package:pharmaklik/features/auth/domain/usecase/register.dart';
import 'package:pharmaklik/features/auth/presentation/login_bloc/login_bloc.dart';
import 'package:pharmaklik/features/auth/presentation/register_bloc/register_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> inject() async {
  final sp = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sp);
  sl.registerSingleton(UserDao());
  sl.registerLazySingleton(() => SharedPreferencesHelper(sl()));
  sl.registerLazySingleton<IAuthFacade>(() => AuthFacade(sl(), sl()));
  sl.registerLazySingleton<IAuthDataSource>(() => LocalAuthDataSource(sl()));
  sl.registerLazySingleton(() => Login(sl()));
  sl.registerLazySingleton(() => Register(sl()));
  sl.registerFactory(() => LoginBloc(sl()));
  sl.registerFactory(() => RegisterBloc(sl()));
}
