abstract class AddNotesStates {}

class NotesInitial extends AddNotesStates {}

class NotesLoading extends AddNotesStates {}

class NotesSuccess extends AddNotesStates {}

class NotesFailure extends AddNotesStates {
  final String errorMess;
  NotesFailure({required this.errorMess});
}
