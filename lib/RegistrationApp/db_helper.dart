import 'package:hive/hive.dart';

class DBHelper {
  static final Box box = Hive.box('users');

  static Future<bool> registerUser(String username, String password) async {
    if (box.containsKey(username)) return false;
    await box.put(username, password);
    return true;
  }

  static Future<bool> loginUser(String username, String password) async {
    if (!box.containsKey(username)) return false;
    return box.get(username) == password;
  }
}
