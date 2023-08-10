// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_projects/projects/hive_flutter/models/todo.dart';
import 'package:flutter_projects/projects/hive_flutter/pages/adding_page.dart';
import 'boxes.dart';
import 'widgets/build_todo.dart';

class HiveFlutterMain extends StatefulWidget {
  const HiveFlutterMain({super.key});

  @override
  State<HiveFlutterMain> createState() => _HiveFlutterMainState();
}

class _HiveFlutterMainState extends State<HiveFlutterMain> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Hive Flutter'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddingPage(),
                    )),
                icon: const Icon(Icons.add))
          ],
        ),
        body: ValueListenableBuilder<Box<Todo>>(
            valueListenable: Boxes.getTodos().listenable(),
            builder: (context, box, _) {
              final todos = box.values.toList().cast<Todo>();
              return buildContent(todos);
            }),
      );

  Widget buildContent(List<Todo> todos) {
    if (todos.isEmpty) {
      return const Center(
        child: Text(
          'No todo yet!',
          style: TextStyle(fontSize: 24),
        ),
      );
    } else {
      return Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: todos.length,
              separatorBuilder: (context, index) => const SizedBox(height: 5),
              itemBuilder: (BuildContext context, int index) {
                final todo = todos[index];
                return BuildTodo(todo: todo);
              },
            ),
          ),
        ],
      );
    }
  }
}
