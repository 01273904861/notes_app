import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/helper_functions.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({
    super.key,
    required this.note,
  });

  final NoteItemModel note;
  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit view',
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.of(context).pop();
               HelperFunctions()
                  .scaffoldMessangerMessage(context, 'note edited succefully');
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextfiled(
            hinttext: 'title',
            onChange: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextfiled(
            hinttext: 'content',
            maxLines: 4,
            onChange: (value) {
              subtitle = value;
            },
          )
        ],
      ),
    );
  }
}
