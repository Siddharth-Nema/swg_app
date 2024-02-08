import 'package:flutter/material.dart';

class LineSeperator extends StatelessWidget {
  const LineSeperator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: List.generate(
            150 ~/ 1,
            (index) => Expanded(
                  child: Container(
                    color: index % 2 == 0 ? Colors.transparent : Colors.black,
                    height: 2,
                  ),
                )),
      ),
    );
  }
}
