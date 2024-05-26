import 'package:flutter/material.dart';
import 'package:notes_app/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
 const CustomAppBar({
    super.key,
    required this.title, required this.icon,
     this.onTap,
  });
 final  String title;
 final  IconData icon;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24),
        ),
        GestureDetector(child: CustomIcon(icon: icon,),
        onTap: onTap,
        ),
      ],
    );
  }
}

