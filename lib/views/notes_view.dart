import 'package:flutter/material.dart';
import 'package:notes_app/views/home_view.dart';
import 'package:notes_app/widgets/add_notes_modalbottomsheet.dart';
class NotesView extends StatelessWidget {
  const NotesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'poppins',
          brightness: Brightness.dark,
        ),
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return AddNoteModalBottomSheet();
                },
              );
            },
            child: Icon(Icons.add),
          ),
          body: NotesViewBody(),
        ));
  }
}
