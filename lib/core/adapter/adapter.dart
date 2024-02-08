import 'package:hive/hive.dart';

import '../../features/authentication/data/model/authenticated_user.dart';

void registerAdapter() {
  Hive.registerAdapter(AuthenticatedUserModelAdapter());
}
