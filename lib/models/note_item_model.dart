import 'package:hive/hive.dart';
 
 //3
part 'note_item_model.g.dart';

//4
// *******************flutter packages pub run build_runner build

//1
@HiveType(typeId: 0)
class NoteItemModel extends HiveObject {

  //2
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtite;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteItemModel({
    required this.date,
    required this.color,
    required this.subtite,
    required this.title,
  });
}

