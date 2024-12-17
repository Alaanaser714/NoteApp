import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/cubits/add_notes_cubits/add_notes_states.dart';
import 'package:note_app/models/notes_model.dart';

class AddNotesCubits extends Cubit<AddNotesStates> {
  AddNotesCubits() : super(AddNotesInitial());

  addNotes(NotesModel notesModel) async {
    emit(AddNotesLoading());

    try {
      var notesBox = Hive.box<NotesModel>("notesBox");
      await notesBox.add(notesModel);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(errorMess: e.toString()));
    }
  }
}
