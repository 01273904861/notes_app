import 'package:flutter/material.dart';
import 'package:notes_app/constats.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
