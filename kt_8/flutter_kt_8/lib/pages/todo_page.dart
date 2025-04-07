import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/todo_bloc.dart';
import '../blocs/todo_event.dart';
import '../blocs/todo_state.dart';
import '../models/todo.dart';

class TodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('To-Do List')),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodoLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is TodoLoaded) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: state.todos.length,
                    itemBuilder: (context, index) {
                      final todo = state.todos[index];
                      return ListTile(
                        title: Text(todo.task),
                        subtitle: Text(
                          todo.isCompleted ? 'Completed' : 'Pending',
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.edit), // Иконка для редактирования
                          onPressed: () {
                            _editTodoDialog(
                              context,
                              todo,
                            ); // Вызов редактирования
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      final newTodo = Todo(
                        id: DateTime.now().toString(),
                        task:
                            'New Task ${DateTime.now().millisecondsSinceEpoch}',
                        isCompleted: false,
                      );
                      context.read<TodoBloc>().add(
                        AddTodo(newTodo),
                      ); // Добавление новой задачи
                    },
                    child: Text('Add Task'),
                  ),
                ),
              ],
            );
          } else if (state is TodoError) {
            return Center(child: Text(state.message));
          }
          return Center(child: Text('No data'));
        },
      ),
    );
  }

  // Диалог для редактирования задачи
  void _editTodoDialog(BuildContext context, Todo todo) {
    TextEditingController controller = TextEditingController(text: todo.task);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Task'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: 'Enter task'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                final updatedTodo = Todo(
                  id: todo.id,
                  task: controller.text,
                  isCompleted: todo.isCompleted,
                );
                context.read<TodoBloc>().add(
                  EditTodo(updatedTodo),
                ); // Отправка события редактирования
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
