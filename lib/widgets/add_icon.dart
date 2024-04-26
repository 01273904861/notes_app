import 'package:flutter/material.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xff61FFD8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Center(
            child: Icon(
              color: Colors.black,
              Icons.add,
              size: 30,
            ),
          ),
        ),);
  }
}
