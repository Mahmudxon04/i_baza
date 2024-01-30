import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Box? box;

Future<void> initHive() async {
  const boxName = 'Mahmudxon';
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  box = await Hive.openBox<dynamic>(boxName);
}



























// import 'dart:io';
//
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart';
//
//
// Box? box;
// Future<void> initHive() async{
//   const boxName = 'Mustafo';
//   Directory directory = await getApplicationDocumentsDirectory();
//   Hive.init(directory.path);
//   box = await Hive.openBox<dynamic>(boxName);
// }