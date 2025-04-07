// lib/blocs/todo_event.dart
import '../models/todo.dart';

abstract class TodoEvent {}

class LoadTodos extends TodoEvent {}

class AddTodo extends TodoEvent {
  final Todo todo;

  AddTodo(this.todo);
}

class EditTodo extends TodoEvent {
  final Todo todo;

  EditTodo(this.todo);
}
