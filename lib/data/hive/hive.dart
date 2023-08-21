
import 'dart:developer';

import 'package:deraya_application/core/Utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class DataManager {
  late BoxCollection collection;
  late Box userData;

  static const USER = "USER";

  Future initHive() async {
    final directory = await getApplicationDocumentsDirectory();
    collection = await BoxCollection.open(
      'dataManager', // Name of your database
      {'data'}, // Names of your boxes
      path: directory
          .path, // Path where to store your boxes (Only used in Flutter / Dart IO)
    );
  }

  Future<void> saveData(String key, dynamic value) async {
    final box = await Hive.openBox('data');
    await box.put(key, value);
    box.close();
  }

  saveUser(Map<String, dynamic> value) async {
    final userData = await Hive.openBox('dataUser');
    await userData.put(USER, value);
    userData.close();
  }

  getData(String key) async {
    final box = await Hive.openBox('data');

    return box.get(key);
  }

  getUserData() async {
    final userData = await Hive.openBox('dataUser');

    try {
      final user = (Map<String, dynamic>.from(userData.get(USER)));

      Utils.token = user['token'];
      log(Utils.token);
      // Utils.user = UserModel.fromJson(user);
      return userData.get(USER);
    } catch (e) {
      userData.clear();
    }
    // return userData.clear();
  }

  deleteUserData() async {
    final userData = await Hive.openBox('dataUser');

    return userData.delete(USER);
  }

  deleteAllData() async {
    final userData = await Hive.openBox('data');

    return userData.delete(USER);
  }
}
