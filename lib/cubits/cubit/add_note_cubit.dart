import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/cubits/cubit/add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNoteInitial());
}
