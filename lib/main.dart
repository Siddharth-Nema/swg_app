import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swg_flutter/views/CDC/CDCIntershipPage.dart';
import 'package:swg_flutter/views/subviews/EventView.dart';
import 'package:swg_flutter/BaseLayout.dart';
import 'package:swg_flutter/LoginPage/LoginPage.dart';
import 'package:swg_flutter/views/subviews/YearWiseStudyMaterial/FirstYearSM.dart';
import 'package:swg_flutter/logoView.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          actionsIconTheme: IconThemeData(color: Colors.black),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.white,
          height: 60,
          padding: EdgeInsets.all(0),
          elevation: 0,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          // backgroundColor: Colors.blue,
          elevation: 5,
          shape: CircleBorder(),
        ),
      ),
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
