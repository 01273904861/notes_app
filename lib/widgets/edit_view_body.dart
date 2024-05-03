import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class EDitViewBody extends StatelessWidget {
  const EDitViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
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
