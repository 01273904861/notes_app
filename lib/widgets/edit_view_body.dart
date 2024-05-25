import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_color_item.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({
    super.key,
    required this.index,
    required this.note,
  });
  final int index;
  final NoteItemModel note;
  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, subtitle;
  int? color;
  late int currentColorIndex;
  @override
  void initState() {
    currentColorIndex = colors.indexOf(Color(widget.note.color));
    print(currentColorIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              icon: Icons.check,
              title: 'Edit view',
              ontap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                widget.note.color = color ?? widget.note.color;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextfiled(
              hinttext: widget.note.title,
              maxLines: 1,
              onChange: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfiled(
                hinttext: widget.note.subtitle,
                maxLines: 4,
                onChange: (value) {
                  subtitle = value;
                }),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colors.length,
                  itemBuilder: (context, i) {
                    return CustomColorItem(
                        isTaped: currentColorIndex == i,
                        onTap: () {
                          color = colors[i].value;
                          currentColorIndex = i;
                          setState(() {});
                        },
                        color: colors[i]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
