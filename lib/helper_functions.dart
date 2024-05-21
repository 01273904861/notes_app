import 'package:flutter/material.dart';

class HelperFunctions{
   void scaffoldMessangerMessage(BuildContext context , String msg) {
      ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
        content: Text(msg),
      ),
    );
  }
}