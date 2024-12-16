// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_notes_cubits/add_notes_cubits.dart';
import 'package:note_app/cubits/add_notes_cubits/add_notes_states.dart';
import 'package:note_app/views/components/add_notes_form.dart';

class CustomModelBottomSheet extends StatelessWidget {
  const CustomModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      child: BlocConsumer<AddNotesCubits, AddNotesStates>(
        listener: (context, state) {
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNotesFailure) {
            print("failled:${state.errorMess}");
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: AddNotesForm());
        },
      ),
    );
  }
}
