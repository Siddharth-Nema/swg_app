import 'package:flutter/material.dart';
import 'package:swg_flutter/views/CDCIntershipPage.dart';
import 'package:swg_flutter/views/HomePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/cdcinternshipblogs': (context) => const CDCIntershipPage(),
      },
    );
  }
}
