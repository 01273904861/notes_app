import 'package:flutter/material.dart';
import 'package:notes_app/widgets/button.dart';
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
            height: 50,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
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
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
