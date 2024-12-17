import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/simple_bloc_observe.dart';
import 'package:note_app/views/screens/notes_screen.dart';

import 'cubits/notes_cubit/notes_cubit.dart';
import 'models/notes_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>("notesBox");
  Bloc.observer = SimpleBlocObserve();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
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
