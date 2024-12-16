import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/cubits/add_notes_cubits/add_notes_cubits.dart';
import 'package:note_app/simple_bloc_observase.dart';
import 'package:note_app/views/screens/notes_screen.dart';

import 'models/notes_model.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObservase();
  await Hive.openBox("notesBox");
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubits(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Change",
        ),
        debugShowCheckedModeBanner: false,
        home: const NotesScreen(),
      ),
    );
  }
}
