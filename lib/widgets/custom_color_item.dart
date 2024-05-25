import 'dart:ui';

import 'package:flutter/material.dart';

class CustomColorItem extends StatelessWidget {
  const CustomColorItem(
      {required this.isTaped,
      super.key,
      required this.onTap,
      required this.color});

  final Color color;
  final void Function()? onTap;
  final bool isTaped;
  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.5),
          child: isTaped
              ? CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: color,
                    radius: 33,
                  ),
                )
              : CircleAvatar(
                  backgroundColor: color,
                  radius: 38,
                )),
    );
  }
}
