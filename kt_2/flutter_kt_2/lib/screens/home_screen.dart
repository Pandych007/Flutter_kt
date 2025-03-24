import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kt_todo_app/state/todo_provider.dart';
import 'package:kt_todo_app/widgets/todo_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<TodoProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/create-todo');
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: todoProvider.todos.length,
        itemBuilder: (context, index) {
          return TodoTile(todo: todoProvider.todos[index]);
        },
      ),
    );
  }
}
