import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart'; // Подключаем модель для доступа к счётчику

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Счётчик')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Количество нажатий:', style: TextStyle(fontSize: 20)),
            Text(
              '${counterModel.count}', // Отображаем счётчик
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterModel.increment, // Увеличиваем счётчик
              child: Text('Нажать'),
            ),
          ],
        ),
      ),
    );
  }
}
