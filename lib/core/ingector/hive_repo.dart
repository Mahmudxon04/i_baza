import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class HiveSingleton {
  static HiveSingleton? _instance;
  static late Box _box;

  HiveSingleton._();

  static Future<HiveSingleton> getInstance() async {
    if (_instance == null) {
      _instance = HiveSingleton._();
      await _instance!._init();
    }
    return _instance!;
  }

  Future _init() async {
    final appDocumentDir =
    await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    await Hive.openBox('Mahmudxon');
    _box = Hive.box('Mahmudxon');
  }

  static bool getAutStatus() {
    return _box.get('IsAuthenticated') ?? false;
  }

  static Future<void> setAuthStatus(bool value) async {
    await _box.put('IsAuthenticated', value);
  }
}




































// import 'package:hive/hive.dart';
//
// class HiveRepo {
//   static HiveRepo? _hiveUtil;
//   static Box? _box;
//
//
//   static Future<HiveRepo> getInstance() async {
//     if (_hiveUtil == null) {
//       final secureStorage = HiveRepo._();
//       await secureStorage._init();
//       _hiveUtil = secureStorage;
//     }
//     return _hiveUtil!;
//   }
//   HiveRepo._();
//
//   Future<void> _init() async {
//     _box = await Hive.openBox<dynamic>('Mustafo');
//   }
// }