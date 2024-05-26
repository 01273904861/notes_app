import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/helper_functions.dart';
import 'package:notes_app/widgets/notes_form.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        color: const Color.fromARGB(217, 0, 0, 0),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteSucess) {
              // Ensure NotesCubit is fetched correctly
              BlocProvider.of<NotesCubit>(context).fetchNotes();

              Navigator.of(context).pop();
              HelperFunctions()
                  .scaffoldMessangerMessage(context, 'note added succefully');
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading,
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: const SingleChildScrollView(child: NotesForm()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
