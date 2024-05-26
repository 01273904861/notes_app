import 'package:flutter/material.dart';
import 'package:notes_app/constats.dart';

import 'package:notes_app/widgets/notes_body.dart';
import 'package:notes_app/widgets/add_notes_modalbottomsheet.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              context: context, // Pass the context here
              builder: (context) {
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
