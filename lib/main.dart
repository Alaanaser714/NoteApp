import 'package:flutter/material.dart';
import 'package:note_app/views/screens/notes_screen.dart';

void main() {
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
