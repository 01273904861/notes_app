import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });
  final List<Color> colors = const [
    Color(0xffE7ED99),
    Color(0xff61FFD8),
    Color(0xff7FDFEC),
    Color.fromARGB(255, 172, 230, 174)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context, i) {
          return CustomNoteItem(
            color: colors[i % 4],
          );
        });
  }
}
