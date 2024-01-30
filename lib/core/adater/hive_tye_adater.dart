import 'package:hive/hive.dart';

import '../../features/authetication/data/models/authenticated_user.dart';

void registerAdapters() {
  Hive.registerAdapter(AuthenticatedUserModelAdapter());
}