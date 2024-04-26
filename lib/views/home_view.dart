import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 24, left: 24),
      child: Column(
        children: [
          const CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}

