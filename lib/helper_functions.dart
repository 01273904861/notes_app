import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

class HelperFunctions{
   void scaffoldMessangerMessage(BuildContext context , String msg) {
      ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
        content: Text(msg),
      ),
    );
  }


  void deleteNoteDialog(BuildContext context, note) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return BlocProvider.value(
          value: BlocProvider.of<NotesCubit>(context),
          child: AlertDialog(
            title: const Text('Delete Note'),
            content: const Text('Are you sure you want to delete this note?'),
            actions: <Widget>[
              TextButton(
                child:const Text('Cancel'),
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Close the dialog
                },
              ),
              TextButton(
                child:const Text('Delete'),
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchNotes();
                  Navigator.of(dialogContext).pop(); // Close the dialog
                },
              ),
            ],
          ),
        );
      },
    );
  }
}