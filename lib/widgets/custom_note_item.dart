import 'package:flutter/material.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/views/edit_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.color , required this.note});
  final Color color;
  final NoteItemModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return EditNotesView();
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                note.title,
                style:const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
             note.date,
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


     // Row(
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Flutter Tips',
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 24,
          //           ),
          //         ),
          //         SizedBox(height: 10),
          //         Text(
          //           'build your career with',
          //           style: TextStyle(
          //             color: Color(0xffB0874E),
          //             fontSize: 18,
          //           ),
          //         ),

          //       ],
          //     ),
          //     Spacer(),
          //     Icon(
          //       Icons.delete,
          //       size: 40,
          //       color: Colors.black,
          //     )
          //   ],
          // ),