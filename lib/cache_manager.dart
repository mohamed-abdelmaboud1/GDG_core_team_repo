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

class SecureCacheManager {
  static late FlutterSecureStorage secureStorage;
  static init() async {
    secureStorage = const FlutterSecureStorage();
  }

  static Future<String?> getSecureData({required String key}) async {
    return await secureStorage.read(key: key);
  }

  static Future<void> setSecureData({
    required String key,
    required String value,
  }) async {
    await secureStorage.write(key: key, value: value);
  }

  static Future<void> deleteSecureData({required String key}) async {
    await secureStorage.delete(key: key);
  }

  /// Delete all
  static Future<void> deleteAllSecureData() async {
    await secureStorage.deleteAll();
  }
}
