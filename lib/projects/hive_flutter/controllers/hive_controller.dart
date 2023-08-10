import 'package:flutter/material.dart';

import '../boxes.dart';
import '../models/todo.dart';

class HiveController with ChangeNotifier {
  final taskController = TextEditingController();
  final dateController = TextEditingController();
  final typeController = TextEditingController();
  final descriptionController = TextEditingController();
  bool isCompleted = false;

  void clearTodo() {
    taskController.clear();
    dateController.clear();
    typeController.clear();
    descriptionController.clear();
    isCompleted = false;
  }

  Future addTodo() async {
    final todo = Todo()
      ..taskName = taskController.text
      ..createdDate = DateTime.now()
      ..description = descriptionController.text
      ..isCompleted = isCompleted
      ..type = 'Daily';
    final box = Boxes.getTodos();
    box.add(todo);
    clearTodo();
    //box.put('mykey', transaction);

    // final mybox = Boxes.getTransactions();
    // final myTransaction = mybox.get('key');
    // mybox.values;
    // mybox.keys;
  }
}
