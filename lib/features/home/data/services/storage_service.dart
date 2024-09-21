import 'package:hive_flutter/adapters.dart';

class StorageService {
  Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox('settings');
  }

  Box get settingsBox => Hive.box('settings');
}
