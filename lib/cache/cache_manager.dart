import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {
  static late final SharedPreferences _pref;

  static init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static Future<bool?> setData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await _pref.setString(key, value);
    }
    if (value is int) {
      return await _pref.setInt(key, value);
    }
    if (value is bool) {
      return await _pref.setBool(key, value);
    }
    if (value is double) {
      return await _pref.setDouble(key, value);
    }
    return null;
  }

  static dynamic getData({required String key}) {
    return _pref.get(key);
  }

  static Future<bool> clearData({required String key}) async {
    return await _pref.remove(key);
  }

  static Future<bool> clearAllData() async {
    return await _pref.clear();
  }
}
