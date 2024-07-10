import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/firebase_options.dart';
import 'package:swg_flutter/views/CDC/CDCIntershipPage.dart';
import 'package:swg_flutter/views/SocietiesPage.dart';
import 'package:swg_flutter/views/StudyMaterial.dart';
import 'package:swg_flutter/views/subviews/BenifitsOfInstiIdPage.dart';
import 'package:swg_flutter/views/subviews/EventView.dart';
import 'package:swg_flutter/BaseLayout.dart';
import 'package:swg_flutter/LoginPage/LoginPage.dart';
import 'package:swg_flutter/views/subviews/KnowYourDepartment.dart';
import 'package:swg_flutter/views/subviews/NoticeBoard.dart';
import 'package:swg_flutter/views/subviews/YearWiseStudyMaterial/FirstYearSM.dart';
import 'package:swg_flutter/logoView.dart';
import 'package:swg_flutter/views/subviews/ourTeamPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: false,
  );
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
            systemNavigationBarColor: Colors.white,
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: GlobalStyles.kPrimaryBlueColor,
          ),
        ),
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
        '/societies': (context) => const SocietiesPage(),
        '/knowyourdep': (context) => const KnowYourDepartment(),
        '/benefitsofinsti': (context) => const BenifitsOfInstiId(),
        '/studymaterial': (context) => const StudyMaterial(),
        '/noticeboard': (context) => const NoticeBoard(),
        '/ourteam': (context) => OurTeamPage(),
      },
    );
  }
}
