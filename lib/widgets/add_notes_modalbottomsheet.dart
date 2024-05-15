import 'package:flutter/material.dart';
import 'package:notes_app/widgets/button.dart';
import 'package:notes_app/widgets/custom_textField.dart';
import 'package:notes_app/widgets/notes_form.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(217, 0, 0, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: NotesForm(),
      ),
    );
  }
}
