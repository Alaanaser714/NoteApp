part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

class NotesCubitInitial extends NotesCubitState {}

class NotesCubitLoading extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {
  final List<NotesModel> notes;

  NotesCubitSuccess(this.notes);
}

class NotesCubitFailure extends NotesCubitState {
  final String errorMess;
  NotesCubitFailure({required this.errorMess});
}
