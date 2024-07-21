import 'package:flutter/material.dart';

class DepressedButton extends StatelessWidget {
  final String text;
  Function onPressed;
  DepressedButton(
      {super.key, required this.text, this.onPressed = _defaultOnPressed});

  static void _defaultOnPressed() {
    // Default implementation for onPressed
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: ElevatedButton(
        style: ButtonStyle(
            minimumSize: MaterialStatePropertyAll(
              Size(MediaQuery.of(context).size.width - 64, 40),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            backgroundColor: const MaterialStatePropertyAll(
                Color.fromARGB(255, 116, 225, 255)),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(12))),
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
