import 'package:pharmaklik/features/auth/domain/inputs/register_model.dart';

class UserTable {
  static String tableName = 'user_table';
  static String idColumn = 'id';
  static String firstNameColumn = 'first_name';
  static String lastNameColumn = 'last_name';
  static String passwordColumn = 'password';
  static String emailColumn = 'email';

  int? id;
  final String email;
  final String firstName;
  final String lastName;
  final String password;

  UserTable._({
    this.id,
    required this.password,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  Map<String, Object?> toMap() {
    return {
      idColumn: id,
      emailColumn: email,
      firstNameColumn: firstName,
      lastNameColumn: lastName,
      passwordColumn: password,
    };
  }

  factory UserTable.fromMap(Map<String, Object?> mp) {
    return UserTable._(
      id: mp[idColumn] != null ? mp[idColumn] as int : null,
      password: mp[passwordColumn] as String,
      email: mp[emailColumn] as String,
      firstName: mp[firstNameColumn] as String,
      lastName: mp[lastNameColumn] as String,
    );
  }

  factory UserTable.fromRegisterModel(RegisterModel registerModel) =>
      UserTable._(
        password: registerModel.password,
        email: registerModel.email,
        firstName: registerModel.firstName,
        lastName: registerModel.lastName,
        id: null,
      );
}
