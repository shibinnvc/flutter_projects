import 'package:flutter/material.dart';
import 'package:flutter_projects/projects/hive_flutter/controllers/hive_controller.dart';
import 'package:provider/provider.dart';

class AddingPage extends StatefulWidget {
  const AddingPage({super.key});

  @override
  State<AddingPage> createState() => _AddingPageState();
}

class _AddingPageState extends State<AddingPage> {
  final formKey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add'),
      ),
      body: Consumer<HiveController>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: value.taskController,
                  decoration: const InputDecoration(
                      hintText: 'Task', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: value.dateController,
                  decoration: const InputDecoration(
                      hintText: 'Date', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: value.typeController,
                  decoration: const InputDecoration(
                      hintText: 'Type', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: value.descriptionController,
                  decoration: const InputDecoration(
                      hintText: 'Description', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      // final todo = Todo()
                      //   ..taskName = value.taskController.text
                      //   ..createdDate = value.dateController.text
                      //   ..description = value.descriptionController.text
                      //   ..isCompleted = value.isCompleted
                      //   ..type = value.typeController.text;
                      value.addTodo();
                      Navigator.pop(context);
                    },
                    child: const Text('Save'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
