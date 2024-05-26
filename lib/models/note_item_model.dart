import 'package:hive/hive.dart';

//3
part 'note_item_model.g.dart';

//4
// write "flutter packages pub run build_runner build" in terminal

//5
//in main ==> Hive.registerAdapter(NoteItemModelAdapter());

//1
@HiveType(typeId: 0)
class NoteItemModel extends HiveObject {
  //2
  @HiveField(0)
   String title;
  @HiveField(1)
   String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NoteItemModel({
    required this.date,
    required this.color,
    required this.subtitle,
    required this.title,
  });
}
