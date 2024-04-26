
import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xff3B3B3B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 30,
        ),
      ),
    );
  }
}
