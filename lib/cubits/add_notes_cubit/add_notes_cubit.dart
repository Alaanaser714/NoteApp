import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_states.dart';
import 'package:note_app/models/notes_model.dart';

class AddNotesCubits extends Cubit<AddNotesStates> {
  AddNotesCubits() : super(AddNotesInitial());

  Color color = Color.fromARGB(255, 82, 82, 106);

  addNotes(NotesModel notesModel) async {
    emit(AddNotesLoading());
    notesModel.color = color.value;

    try {
      var notesBox = Hive.box<NotesModel>("notesBox");
      await notesBox.add(notesModel);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(errorMess: e.toString()));
    }
  }
}
