import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 24, right: 24, left: 24),
      child: Column(
        children:  [
           CustomAppBar(
            icon: Icons.search,
            title: 'Notes',
          ),
          SizedBox(height: 15),
          Expanded(
            child: NotesListView(),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
