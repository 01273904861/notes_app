import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
 const CustomAppBar({
    super.key,
    required this.title, required this.icon,
    this.ontap,
  });
 final  String title;
 final  IconData icon;
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:const TextStyle(fontSize: 24),
        ),
        GestureDetector(
          onTap: ontap ,
          child: CustomIcon(icon: icon,)),
      ],
    );
  }
}
