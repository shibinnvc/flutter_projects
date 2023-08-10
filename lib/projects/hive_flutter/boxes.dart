import 'package:flutter_projects/projects/hive_flutter/models/todo.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<Todo> getTodos() => Hive.box<Todo>('todos');
}
