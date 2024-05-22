part of 'notes_cubit.dart';

abstract class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccess extends NotesState {}

final class NotesFaiuler extends NotesState {
  final String err;

  NotesFaiuler(this.err);
}
