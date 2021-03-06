import 'dart:developer';

import 'package:pharmaklik/core/database/entities/user_table.dart';
import 'package:pharmaklik/core/failures/failure.dart';
import 'package:sqflite/sqflite.dart';

import '../../constant/app_constant.dart';

class UserDao {
  late Database _db;

  UserDao() {
    initialize();
  }

    Future<void> initialize() async {
    final String databasePath = '${await getDatabasesPath()}/${AppConstant.dataBaseName}';
    _db = await openDatabase(databasePath,
        version: 1, onCreate: (db, version) async {
      await db.execute('''
      create table ${UserTable.tableName} (
      ${UserTable.idColumn} integer primary key autoincrement,
      ${UserTable.firstNameColumn} text not null,
      ${UserTable.lastNameColumn} text not null,
      ${UserTable.emailColumn} text not null,
      ${UserTable.passwordColumn} text not null)
      ''');
    });
    log('Database is ready to use $databasePath');
  }

  Future<UserTable> insert(UserTable userTable) async {
    if (await emailExist(userTable.email)) {
      throw const FailureWithMessageFromServer("Email Already exist");
    }
    userTable.id = await _db.insert(
      UserTable.tableName,
      userTable.toMap(),
    );
    return userTable;
  }

  Future<bool> emailExist(String email) async {
    final res = await _db.query(
      UserTable.tableName,
      where: '${UserTable.emailColumn} = ?',
      whereArgs: [email],
    );
    return res.isNotEmpty;
  }

  Future<UserTable> loginWithEmailAndPassword(
      String email, String password) async {
    final res = await _db.query(
      UserTable.tableName,
      where: '${UserTable.emailColumn} = ? AND ${UserTable.passwordColumn} = ?',
      whereArgs: [email, password],
    );
    if (res.isEmpty) {
      throw const FailureWithMessageFromServer("Invalid email or password");
    }
    return UserTable.fromMap(res[0]);
  }
}
