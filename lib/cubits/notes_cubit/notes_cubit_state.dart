part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

class NotesCubitInitial extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {}
