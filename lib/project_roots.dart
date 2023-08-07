import 'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';
import 'package:flutter_projects/projects/hive_flutter/hive_flutter_main.dart';

import 'projects/firebase/firebase_main.dart';
import 'projects/google_sheet/googlesheet_main.dart';

class SelectedProject {
  static Widget project(Project projectName) {
    final String name = projectName.name;
    switch (name) {
      case 'googleSheet':
        return const GoogleSheetMain();
      case 'firebase':
        return const FirebaseMain();
      case 'hiveFlutter':
        return const HiveFlutterMain();
      default:
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text('There is no project'),
          ),
        );
    }
  }
}
