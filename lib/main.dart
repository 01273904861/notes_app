import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/simple_bloc_observer.dart';

void main() async {
  Bloc.observer = SimpleBlokObserver();
  await Hive.initFlutter();

  Hive.registerAdapter(NoteItemModelAdapter());
  await Hive.openBox<NoteItemModel>(kNotesBox);

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesApp(),
    ),
  );
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'poppins',
          brightness: Brightness.dark,
        ),
        home: const NotesView(),
      ),
    );
  }
}
