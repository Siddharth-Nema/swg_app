import 'package:flutter/material.dart';

class LogoView extends StatelessWidget {
  const LogoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
        color: Colors.white,
      ),
      child: const Center(
          child: Image(image: AssetImage('assets/images/swg.jpg'))),
    );
  }
}
