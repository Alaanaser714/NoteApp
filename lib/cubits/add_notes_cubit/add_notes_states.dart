abstract class AddNotesStates {}

class AddNotesInitial extends AddNotesStates {}

class AddNotesLoading extends AddNotesStates {}

class AddNotesSuccess extends AddNotesStates {}

class AddNotesFailure extends AddNotesStates {
  final String errorMess;
  AddNotesFailure({required this.errorMess});
}