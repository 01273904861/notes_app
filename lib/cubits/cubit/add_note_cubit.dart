import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notes_app/constats.dart';
import 'package:notes_app/cubits/cubit/add_notes_state.dart';
import 'package:notes_app/models/note_item_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteItemModel note) {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteItemModel>(kNotesBox);
      notesBox.add(note);
      emit(AddNoteSucess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
