import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kt_todo_app/state/todo_provider.dart';
import 'package:kt_todo_app/screens/home_screen.dart';
import 'package:kt_todo_app/screens/create_todo_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        '/create-todo': (_) => CreateTodoScreen(),
      },
    );
  }
}
