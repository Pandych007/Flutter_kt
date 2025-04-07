// lib/blocs/todo_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'todo_event.dart';
import 'todo_state.dart';
import '../models/todo.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  List<Todo> todos = [];

  TodoBloc() : super(TodoLoading()) {
    on<LoadTodos>(_onLoadTodos);
    on<AddTodo>(_onAddTodo);
    on<EditTodo>(_onEditTodo); // Обработчик для редактирования
  }

  // Обработка события загрузки задач
  void _onLoadTodos(LoadTodos event, Emitter<TodoState> emit) async {
    emit(TodoLoading());
    await Future.delayed(Duration(seconds: 1)); // Симуляция задержки
    todos = [
      Todo(id: '1', task: 'Buy groceries', isCompleted: false),
      Todo(id: '2', task: 'Walk the dog', isCompleted: true),
    ];
    emit(TodoLoaded(todos: todos));
  }

  // Обработка события добавления задачи
  void _onAddTodo(AddTodo event, Emitter<TodoState> emit) {
    todos.add(event.todo);
    emit(TodoLoaded(todos: todos));
  }

  // Обработка события редактирования задачи
  void _onEditTodo(EditTodo event, Emitter<TodoState> emit) {
    final index = todos.indexWhere((todo) => todo.id == event.todo.id);
    if (index != -1) {
      todos[index] = event.todo; // Обновление задачи
      emit(TodoLoaded(todos: todos));
    }
  }
}
