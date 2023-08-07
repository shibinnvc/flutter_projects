import 'package:flutter/material.dart';
import 'package:flutter_projects/project_roots.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Projects',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SelectedProject.project(Project.googleSheet),
    );
  }
}

enum Project { googleSheet, orange, yellow, green, blue, indigo, violet }
