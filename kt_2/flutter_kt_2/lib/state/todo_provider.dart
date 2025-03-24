import 'package:flutter/material.dart';
import 'package:kt_todo_app/models/todo_model.dart';
import 'package:uuid/uuid.dart';

class TodoProvider extends ChangeNotifier {
  final List<Todo> _todos = [
    Todo(id: const Uuid().v4(), title: 'Explore Flutter', description: "Learn state management"),
  ];

  List<Todo> get todos => _todos;

  void addTodo(String title, String description) {
    final newTodo = Todo(
      id: const Uuid().v4(),
      title: title,
      description: description,
    );
    _todos.add(newTodo);
    notifyListeners();
  }

  void deleteTodo(String id) {
    _todos.removeWhere((todo) => todo.id == id);
    notifyListeners();
  }

  void toggleTodoStatus(String id) {
    final todo = _todos.firstWhere((todo) => todo.id == id);
    todo.toggleCompletion();
    notifyListeners();
  }
}
