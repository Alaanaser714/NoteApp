import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/views/screens/notes_screen.dart';

import 'models/notes_model.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("notesBox");
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Change",
      ),
      debugShowCheckedModeBanner: false,
      home: const NotesScreen(),
    );
  }
}
