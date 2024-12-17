import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/notes_model.dart';
part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  List<NotesModel>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<NotesModel>("notesBox");
    notes = notesBox.values.toList();
    emit(NotesCubitSuccess());
  }
}
