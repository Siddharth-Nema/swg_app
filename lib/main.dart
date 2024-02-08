import 'package:flutter/material.dart';
import 'package:swg_flutter/views/CDC/CDCIntershipPage.dart';
import 'package:swg_flutter/views/EventView.dart';
import 'package:swg_flutter/views/BaseLayout.dart';
import 'package:swg_flutter/views/LoginPage.dart';
import 'package:swg_flutter/views/YearWiseStudyMaterial/FirstYearSM.dart';
import 'package:swg_flutter/views/logoView.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        'logo': (context) => const LogoView(),
        '/login': (context) => const LoginPage(),
        '/': (context) => const HomePage(),
        '/cdcinternshipblogs': (context) => const CDCIntershipPage(),
        '/event-view': (context) => EventView(event: event),
        '/firstyearstudy': (context) => const FirstYearSM(),
      },
    );
  }
}
