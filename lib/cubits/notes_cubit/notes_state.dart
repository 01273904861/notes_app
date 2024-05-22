part of 'notes_cubit.dart';

abstract class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSucess extends NotesState {
  final List<NoteItemModel> notes;

  NotesSucess(this.notes);
}

final class NotesFaiuler extends NotesState {
  final String err;

  NotesFaiuler(this.err);
}
