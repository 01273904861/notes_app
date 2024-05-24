
import 'dart:ui';

import 'package:flutter/material.dart';

class CustomColorItem extends StatelessWidget {
  const CustomColorItem({
    super.key,
   required this.onTap, required this.color
   
  });

  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context ,) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.5),
        child: CircleAvatar(
          backgroundColor: color,
          radius: 38,
        ),
      ),
    );
  }
}
