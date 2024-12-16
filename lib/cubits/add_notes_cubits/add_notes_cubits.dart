import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubits/add_notes_states.dart';

class AddNotesCubits extends Cubit<AddNotesStates> {
  AddNotesCubits() : super(NotesInitial());
}
