import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/views/edit_view.dart';
import 'package:notes_app/widgets/notes_body.dart';
import 'package:notes_app/widgets/add_notes_modalbottomsheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        routes: {
          EditNotesView.id: (context) => EditNotesView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'poppins',
          brightness: Brightness.dark,
        ),
        home: Scaffold(
          floatingActionButton: SingleChildScrollView(
            child: FloatingActionButton(
              backgroundColor: kPrimaryColor,
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  scrollControlDisabledMaxHeightRatio: 1,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
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
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
          body: NotesViewBody(),
        ),
      ),
    );
  }
}
