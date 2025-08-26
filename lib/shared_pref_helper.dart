import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static late final SharedPreferences _pref;

  static init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static Future<bool> setString({
    required String key,
    required String value,
  }) async {
    return await _pref.setString(key, value);
  }

  static Future<bool> setInt({required String key, required int value}) async {
    return await _pref.setInt(key, value);
  }

  static Future<bool> setBool({
    required String key,
    required bool value,
  }) async {
    return await _pref.setBool(key, value);
  }

  static Future<bool> setDouble({
    required String key,
    required double value,
  }) async {
    return await _pref.setDouble(key, value);
  }

  static String? getString({required String key}) {
    return _pref.getString(key);
  }

  static int? getInt({required String key}) {
    return _pref.getInt(key);
  }

  static bool? getBool({required String key}) {
    return _pref.getBool(key);
  }

  static double? getDouble({required String key}) {
    return _pref.getDouble(key);
  }

  static Future<bool> clearData({required String key}) async {
    return await _pref.remove(key);
  }

  static Future<bool> clearAllData() async {
    return await _pref.clear();
  }
}
