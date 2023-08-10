import 'package:flutter/material.dart';
import '../models/todo.dart';

class BuildTodo extends StatelessWidget {
  final Todo todo;
  const BuildTodo({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.black12,
      title: Text(todo.taskName ?? ''),
      subtitle: Text(todo.description ?? ''),
    );
  }
}
