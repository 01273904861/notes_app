import 'package:flutter/material.dart';

import 'package:notes_app/constats.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled({
    super.key,
    this.maxLines,
    required this.hinttext,
    this.onSaved
    ,this.onChange,
  });
  final int? maxLines;
  final String hinttext;
  final void Function(String?)? onSaved;
  final  void Function(String)? onChange; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'this field is required' ; 
        }
        else {
          return null;
        }
      },
      style:const TextStyle(color: kPrimaryColor),
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle:const TextStyle(color: kPrimaryColor),
        border: borderStyle(),
        focusedBorder: borderStyle(color: kPrimaryColor),
        enabledBorder: borderStyle(),
      ),
    );
  }

  OutlineInputBorder borderStyle({color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
