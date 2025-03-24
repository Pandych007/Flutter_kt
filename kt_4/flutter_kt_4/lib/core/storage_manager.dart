import 'package:shared_preferences/shared_preferences.dart';

class StorageManager {
  static const String _countKey = 'count';

  // Метод для загрузки счётчика из SharedPreferences
  Future<int> fetchCount() async {
    final prefs = await SharedPreferences.getInstance();
    final count = prefs.getInt(_countKey) ?? 0; // Если нет данных, возвращаем 0
    return count;
  }

  // Метод для сохранения счётчика в SharedPreferences
  Future<void> saveCount(int count) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_countKey, count);
  }
}
