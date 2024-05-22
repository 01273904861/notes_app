import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 24, right: 24, left: 24),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit view',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextfiled(hinttext: 'title'),
          SizedBox(
            height: 20,
          ),
          CustomTextfiled(
            hinttext: 'content',
            maxLines: 4,
          )
        ],
      ),
    );
  }
}
