import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/project_roots.dart';
import 'package:flutter_projects/projects/firebase/modules/mobile_auth/provider/auth_provider.dart';
import 'package:flutter_projects/projects/hive_flutter/controllers/hive_controller.dart';
import 'package:flutter_projects/projects/hive_flutter/models/todo.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox<Todo>('todos');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => HiveController()),
      ],
      child: MaterialApp(
        title: 'Flutter Projects',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SelectedProject.project(Project.hiveFlutter),
      ),
    );
  }
}

enum Project { googleSheet, firebase, hiveFlutter }
