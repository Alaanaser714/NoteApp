// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/custom_model_bottom_sheet.dart';
import '../components/custom_notes_container.dart';

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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10),
              itemBuilder: (context, index) {
                return CustomNotesContainer();
              },
            ),
          ),
        ],
      ),
    );
  }
}
