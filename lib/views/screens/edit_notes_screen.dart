// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/notes_model.dart';

import '../../widgets/custom_text_field.dart';

class EditNotesScreen extends StatefulWidget {
  const EditNotesScreen({
    super.key,
    required this.notesModel,
  });
  final NotesModel notesModel;
  @override
  State<EditNotesScreen> createState() => _EditNotesScreenState();
}

class _EditNotesScreenState extends State<EditNotesScreen> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Notes",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.25),
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              onPressed: () {
                widget.notesModel.title = title ?? widget.notesModel.title;
                widget.notesModel.subtitle =
                    subtitle ?? widget.notesModel.subtitle;
                widget.notesModel.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.check,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.notesModel.title,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onChanged: (value) {
              subtitle = value;
            },
            hintText: widget.notesModel.subtitle,
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
