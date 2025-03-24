import 'package:flutter/material.dart';
import '../core/storage_manager.dart'; // Подключаем StorageManager

class CounterModel extends ChangeNotifier {
  int _count = 0;
  final StorageManager _storageManager = StorageManager();

  int get count => _count;

  // Конструктор, который загружает данные при инициализации
  CounterModel() {
    _loadCount(); // Загружаем счётчик при старте
  }

  // Метод для загрузки счётчика из SharedPreferences
  Future<void> _loadCount() async {
    _count = await _storageManager.fetchCount();
    notifyListeners(); // Оповещаем слушателей (UI)
  }

  // Метод для увеличения счётчика и сохранения
  Future<void> increment() async {
    _count++;
    await _storageManager.saveCount(_count);
    notifyListeners(); // Оповещаем слушателей (UI)
  }
}
