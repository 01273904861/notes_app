import 'package:flutter/material.dart';
import 'package:notes_app/models/note_item_model.dart';

import 'package:notes_app/widgets/edit_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});
  static String id = 'EditView';
 final NoteItemModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: EditNotesViewBody(note: note,),
    );
  }
}
