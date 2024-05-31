import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const InputField({super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Your $text'),
        ),
        TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
            ),
          ),
        ),
      ],
    );
  }
}
