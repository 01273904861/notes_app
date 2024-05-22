import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomIcon extends StatelessWidget {
 const CustomIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xff3B3B3B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Icon(icon , size:30),
      ),
    );
  }
}
