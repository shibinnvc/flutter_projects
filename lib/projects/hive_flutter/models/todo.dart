import 'package:hive/hive.dart';

part 'todo.g.dart';

@HiveType(typeId: 0)
class Todo extends HiveObject {
  @HiveField(0)
  String? taskName;

  @HiveField(1)
  DateTime? createdDate;

  @HiveField(2)
  bool isCompleted = false;

  @HiveField(3)
  String? description;

  @HiveField(4)
  String? type;
}
