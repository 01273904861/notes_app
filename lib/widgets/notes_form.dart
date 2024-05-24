import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_color_item.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class NotesForm extends StatefulWidget {
  const NotesForm({
    super.key,
  });

  @override
  State<NotesForm> createState() => _NotesFormState();
}

class _NotesFormState extends State<NotesForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  int? color;
  final List<Color> colors = const [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.grey,
    Color(0xffE7ED99),
    Color(0xff61FFD8),
    Color(0xff7FDFEC),
    Color.fromARGB(255, 172, 230, 174),
    Color.fromARGB(255, 120, 159, 122),
    Color.fromARGB(255, 52, 70, 53),
    Color.fromARGB(255, 152, 166, 153),
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextfiled(
            onSaved: (value) {
              title = value;
            },
            hinttext: 'note',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextfiled(
            onSaved: (value) {
              subtitle = value;
            },
            hinttext: 'content',
            maxLines: 4,
          ),
          SizedBox(
            height: 38 * 2.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
              itemBuilder: (context, i) {
                return CustomColorItem(
                  color: colors[i],
                  onTap: () {
                    color = colors[i].value;
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    String formatedDate =
                        DateFormat('EEEE, MMMM d, yyyy h:mm a')
                            .format(DateTime.now());
                    BlocProvider.of<AddNoteCubit>(context).addNote(
                      NoteItemModel(
                        date: formatedDate,
                        color: color!,
                        subtitle: subtitle!,
                        title: title!,
                      ),
                    );

                    /*
                           the form is valid, this line saves  the form's current state. 
                          The save() method typically triggers the onSaved 
                          callback for each form field, allowing you to save 
                          the field's value to your data model or perform other actions.
                          */
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    // the form fields will continuously validate as the user enters data,
                    // and any validation errors will be displayed immediately.
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
