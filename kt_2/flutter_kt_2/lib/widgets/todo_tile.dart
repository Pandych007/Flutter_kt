import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kt_todo_app/models/todo_model.dart';
import 'package:kt_todo_app/state/todo_provider.dart';

class TodoTile extends StatelessWidget {
  final Todo todo;

  const TodoTile({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(
          todo.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(todo.description),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: todo.isCompleted,
              onChanged: (_) {
                context.read<TodoProvider>().toggleTodoStatus(todo.id);
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                context.read<TodoProvider>().deleteTodo(todo.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
