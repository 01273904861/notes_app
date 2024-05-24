import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NotesFaiuler) {
          print(state.err);
        }
        List<NoteItemModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        print('lenght ${notes.length}');
        return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, i) {
              return CustomNoteItem(
              
                note: notes[i],
                index: i,
              );
            },
            );
      },
    );
  }
}
