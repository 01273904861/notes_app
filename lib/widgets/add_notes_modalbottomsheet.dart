import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
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
              // HelperFunctions()
              //     .scaffoldMessangerMessage(context, 'add note sucessed');
              print('sucess');
              Future.delayed(
                const Duration(seconds: 1),
                () => Navigator.of(context).pop(),
              );
            }
            if (state is AddNoteFailure) {
              // HelperFunctions()
              //     .scaffoldMessangerMessage(context, 'failed as ${state.err}');
              print('failed as ${state.err}');
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
