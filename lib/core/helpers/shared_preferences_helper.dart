import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  final SharedPreferences _sharedPreferences;

  const SharedPreferencesHelper(this._sharedPreferences);

  String getString(String key) => _sharedPreferences.getString(key) ?? '';

  int getInt(String key) => _sharedPreferences.getInt(key) ?? 0;

  bool getBool(String key) => _sharedPreferences.getBool(key) ?? false;

  Future<bool> saveString(String key, String value) =>
      _sharedPreferences.setString(key, value);

  Future<bool> saveBool(String key, bool value) =>
      _sharedPreferences.setBool(key, value);
}
