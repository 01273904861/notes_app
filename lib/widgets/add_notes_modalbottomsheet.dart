import 'package:flutter/material.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/widgets/button.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class AddNoteModalBottomSheet extends StatelessWidget {
  const AddNoteModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(217, 0, 0, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextfiled(
                hinttext: 'note',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextfiled(
                hinttext: 'content',
                maxLines: 4,
              ),
              SizedBox(
                height: 30,
              ),
              Button(),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

