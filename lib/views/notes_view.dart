import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/edit_view.dart';
import 'package:notes_app/widgets/notes_body.dart';
import 'package:notes_app/widgets/add_notes_modalbottomsheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          floatingActionButton: SingleChildScrollView(
            child: FloatingActionButton(
              backgroundColor: kPrimaryColor,
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return const AddNoteModalBottomSheet();
                  },
                );
              },
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
          body: const NotesViewBody(),
       
    );
  }
}
