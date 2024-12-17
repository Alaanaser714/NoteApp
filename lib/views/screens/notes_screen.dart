// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/components/custom_listview_notes.dart';
import '../components/custom_model_bottom_sheet.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              context: context,
              builder: (context) {
                return CustomModelBottomSheet();
              },
            );
          },
          child: Icon(
            Icons.add,
            size: 35,
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Notes",
            style: TextStyle(fontSize: 30),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.25),
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                ),
              ),
            )
          ],
        ),
        body: CustomListviewNotes()
      ),
    );
  }
}
