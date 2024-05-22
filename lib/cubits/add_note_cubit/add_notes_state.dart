abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String err;
  AddNoteFailure(this.err);
}
