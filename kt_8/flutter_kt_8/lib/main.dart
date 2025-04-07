import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/todo_bloc.dart';
import 'blocs/todo_event.dart';
import 'blocs/todo_event.dart';
import 'pages/todo_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              TodoBloc()..add(LoadTodos()), // Загружаем задачи при старте
      child: MaterialApp(
        title: 'Flutter To-Do',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: TodoPage(),
      ),
    );
  }
}
