import 'package:shared_preferences/shared_preferences.dart';

class StorageRepo {
  static StorageRepo? _storageUtil;
  static SharedPreferences? _sharedPreferences;

  static Future<StorageRepo> getInstance() async {
    if (_storageUtil == null) {
      final secureStorage = StorageRepo._();
      await secureStorage._init();
      _storageUtil = secureStorage;
    }
    return _storageUtil!;
  }
  StorageRepo._();

  Future<void> _init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static bool getAuthStatus() {
    return _sharedPreferences?.getBool('auth_status') ?? false;
  }

  static Future<void> setAuthStatus(bool value) async {
    await _sharedPreferences?.setBool('auth_status', value);
  }

}