import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constats.dart';

import 'package:notes_app/models/note_item_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteItemModel>? notes;
  void fetchNotes() {
    notes = Hive.box<NoteItemModel>(kNotesBox).values.toList();
    emit(NotesSucess());
  }
}
