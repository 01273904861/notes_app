import 'package:flutter/material.dart';

import 'package:notes_app/models/note_item_model.dart';

class HelperFunctions {
  void scaffoldMessangerMessage(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  void showLogoutDialog(BuildContext context, {required NoteItemModel note}) {

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('delete'),
            content: const Text(
              'Do you want to delete this note ?',
              style: TextStyle(fontSize: 20),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'No',
                  style: TextStyle(fontSize: 19),
                ),
              ),
              TextButton(
                onPressed:() {
                      note.delete();
                      Navigator.of(context).pop();
                    },
                
                child: const Text(
                  'Yes',
                  style: TextStyle(fontSize: 19),
                ),
              )
            ],
          );
        });
  }



}
