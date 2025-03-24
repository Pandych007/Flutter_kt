import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/main_screen.dart'; // Экран с счётчиком
import 'models/counter_model.dart'; // Модель для управления состоянием счётчика

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterModel(), // Создаём и передаем модель
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(), // Экран с отображением счётчика
      ),
    );
  }
}
