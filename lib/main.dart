import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async{

 await Hive.initFlutter();
 await Hive.openBox(kNotesBox);

 Hive.registerAdapter(NoteItemModelAdapter());
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesApp(),
    ),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return NotesView();
  }
}
