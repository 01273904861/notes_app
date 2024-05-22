import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
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
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    String formatedDate =
                        DateFormat('dd/m/yyyy').format(DateTime.now());
                    BlocProvider.of<AddNoteCubit>(context).addNote(
                      NoteItemModel(
                        date: formatedDate,
                        color: Colors.blue.value,
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
