// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:note_app/views/components/custom_listview_notes.dart';
import '../components/custom_model_bottom_sheet.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ),
        body: CustomListviewNotes());
  }
}
