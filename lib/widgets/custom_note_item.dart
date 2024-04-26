import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFECD7E),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'build your career with\ntharwat samy',
                style: TextStyle(
                  color: Color(0xffB0874E),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'may 2023',
            style: TextStyle(
              color: Color(0xffB0874E),
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}


     // Row(
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Flutter Tips',
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 24,
          //           ),
          //         ),
          //         SizedBox(height: 10),
          //         Text(
          //           'build your career with',
          //           style: TextStyle(
          //             color: Color(0xffB0874E),
          //             fontSize: 18,
          //           ),
          //         ),

          //       ],
          //     ),
          //     Spacer(),
          //     Icon(
          //       Icons.delete,
          //       size: 40,
          //       color: Colors.black,
          //     )
          //   ],
          // ),