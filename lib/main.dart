import 'package:flutter/material.dart';
import 'package:notes_app/views/home_view.dart';
import 'package:notes_app/widgets/add_icon.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'poppins',
          brightness: Brightness.dark,
        ),
        home: Scaffold(
          body: HomeView(),
          floatingActionButton: AddIcon(),
        ));
  }
}
