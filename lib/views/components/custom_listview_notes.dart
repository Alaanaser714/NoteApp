// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/notes_model.dart';

import 'custom_notes_container.dart';

class CustomListviewNotes extends StatefulWidget {
  const CustomListviewNotes({super.key});

  @override
  State<CustomListviewNotes> createState() => _CustomListviewNotesState();
}

class _CustomListviewNotesState extends State<CustomListviewNotes> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NotesModel>? notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemBuilder: (context, index) {
                  return CustomNotesContainer(
                    notesModel: notes[index],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
