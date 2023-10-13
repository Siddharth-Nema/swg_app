import 'package:flutter/material.dart';

class ColumnTile extends StatelessWidget {
  final String heading;
  final String desc;
  const ColumnTile({super.key, required this.heading, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white, width: 1.5))),
      height: 70,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              heading,
              style: const TextStyle(color: Colors.amber, fontSize: 14.0),
            ),
            Text(
              desc,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
            )
          ],
        ),
        const Icon(
          Icons.chevron_right_rounded,
          color: Colors.white,
          size: 42,
        ),
      ]),
    );
  }
}
