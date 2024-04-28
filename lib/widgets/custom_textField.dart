import 'package:flutter/material.dart';
import 'package:notes_app/constats.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled({
    super.key,
    this.maxLines,
    required this.hinttext,
  });
  final int? maxLines;
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      style: TextStyle(color: kPrimaryColor),
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(color: kPrimaryColor),
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
