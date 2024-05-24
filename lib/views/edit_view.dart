import 'package:flutter/material.dart';

import 'package:notes_app/models/note_item_model.dart';

import 'package:notes_app/widgets/edit_view_body.dart';

class EditNotesView extends StatefulWidget {
  const EditNotesView({
    required this.index,
    super.key, required this.note});
  static String id = 'EditView';
   final int index;
   final NoteItemModel note;
  @override
  State<EditNotesView> createState() => _EditNotesViewState();
}

class _EditNotesViewState extends State<EditNotesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(index:widget.index,note:widget.note,),
    );
  }
}
