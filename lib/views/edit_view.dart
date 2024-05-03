import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textField.dart';
import 'package:notes_app/widgets/edit_view_body.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});
  static String id= 'EditView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Note'),),
      body: EDitViewBody(),
    );
  }
}
