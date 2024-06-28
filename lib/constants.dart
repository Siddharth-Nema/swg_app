import 'package:flutter/material.dart';
import 'package:swg_flutter/models/Branch.dart';
import 'package:swg_flutter/models/Department.dart';
import 'package:swg_flutter/models/Society.dart';

class GlobalConstants {
  static List<Society> societies = [
    Society(
        name: 'Student Welfare Group',
        icon: const AssetImage('assets/images/3.png'),
        intro: 'Work for the academic welfare of students')
  ];

  static List<Branch> branches = [
    Branch(name: "Aerospace Engineering"),
    Branch(name: "Agricultural and Food Processing"),
    Branch(name: "Bio-Technology"),
    Branch(name: "Chemistry"),
  ];

// AE.png  BT.png  CH.png  CY.png  EE.png  GG.png  IE.png  MA.png  MF.png  MT.png  PH.png
// AG.png  CE.png  CS.png  EC.png  EX.png  HS.png  IM.png  ME.png  MI.png  NA.png

// https://medium.com/@swgiitkgp/know-your-department-aerospace-engineering-2f56a3572ffe
// https://medium.com/@swgiitkgp/know-your-department-agricultural-and-food-engineering-99f88ff9d8a8
// https://medium.com/@swgiitkgp/know-your-department-biotechnology-2e105384ce43
// https://medium.com/@swgiitkgp/know-your-department-chemical-engineering-c54d2bc608d5
// https://medium.com/@swgiitkgp/know-your-department-chemistry-ce8973b56a67
// https://medium.com/@swgiitkgp/know-your-department-civil-engineering-63caabd97cb0
// https://medium.com/@swgiitkgp/know-your-department-computer-science-and-engineering-24392aab7146
// https://medium.com/@swgiitkgp/know-your-department-electrical-engineering-7a66cc2a80d3
// https://medium.com/@swgiitkgp/know-your-department-electronics-and-electrical-communications-engineering-4bf6a043475
// https://medium.com/@swgiitkgp/know-your-department-geology-and-geophysics-31fd09664b3d
// https://medium.com/@swgiitkgp/know-your-branch-economics-67e8b350a5de
// https://medium.com/@swgiitkgp/know-your-department-industrial-and-systems-engineering-50fe3321bd6dd
// https://medium.com/@swgiitkgp/know-your-department-mathematics-d5ad3ff992f4
// https://medium.com/@swgiitkgp/know-your-department-mechanical-engineering-bf4aaa54e8d
// https://medium.com/@swgiitkgp/know-your-department-metallurgical-and-materials-engineering-26d1070cec97
// https://medium.com/@swgiitkgp/know-your-department-mining-engineering-2c37de00793f
// https://medium.com/@swgiitkgp/know-your-department-ocean-engineering-and-naval-architecture-82ebca5c6bdf
// https://medium.com/@swgiitkgp/know-your-department-physics-da4bdb49af6b

  // static List<Department> derpartments = [
  //   Department(
  //     name: "Aernoutical Engineering",
  //     image: "assets/images/dept logo/AE.png",
  //     code: "AE",
  //     mediumArticleLink:
  //         "https://medium.com/@swgiitkgp/know-your-department-aerospace-engineering-2f56a3572ffe",
  //   ),
  //   Department(
  //       name: "Agricultural and Food Processing",
  //       image: "assets/images/dept logo/AG.png",
  //       code: "AG"),
  //   Department(
  //       name: "Bio-Technology",
  //       image: "assets/images/dept logo/BT.png",
  //       code: "BT"),
  //   Department(
  //       name: "Chemistry", image: "assets/images/dept logo/CH.png", code: "CH"),
  //   Department(
  //       name: "Civil Engineering",
  //       image: "assets/images/dept logo/CE.png",
  //       code: "CE"),
  //   Department(
  //       name: "Computer Science and Engineering",
  //       image: "assets/images/dept logo/CS.png",
  //       code: "CS"),
  //   Department(
  //       name: "Electronics and Communication Engineering",
  //       image: "assets/images/dept logo/EC.png",
  //       code: "EC"),
  //   Department(
  //       name: "Electrical Engineering",
  //       image: "assets/images/dept logo/EE.png",
  //       code: "EE"),
  //   Department(
  //       name: "Exploration Geophysics",
  //       image: "assets/images/dept logo/EX.png",
  //       code: "EX"),
  //   Department(
  //       name: "Geology and Geophysics",
  //       image: "assets/images/dept logo/GG.png",
  //       code: "GG"),
  //   Department(
  //       name: "Humanities and Social Sciences",
  //       image: "assets/images/dept logo/HS.png",
  //       code: "HS"),
  //   Department(
  //       name: "Industrial and Systems Engineering",
  //       image: "assets/images/dept logo/IM.png",
  //       code: "IM"),
  //   Department(
  //       name: "Mathematics",
  //       image: "assets/images/dept logo/MA.png",
  //       code: "MA"),
  //   Department(
  //       name: "Mechanical Engineering",
  //       image: "assets/images/dept logo/ME.png",
  //       code: "ME"),
  //   Department(
  //       name: "Mining Engineering",
  //       image: "assets/images/dept logo/MI.png",
  //       code: "MI"),
  //   Department(
  //       name: " Manufacturing Science",
  //       image: "assets/images/dept logo/MF.png",
  //       code: "MF"),
  //   Department(
  //       name: "Metallurgical and Materials Engineering",
  //       image: "assets/images/dept logo/MT.png",
  //       code: "MT"),
  //   Department(
  //       name: "Physics", image: "assets/images/dept logo/PH.png", code: "PH"),
  //   Department(
  //       name: "Naval Architecture and Ocean Engineering",
  //       image: "assets/images/dept logo/NA.png",
  //       code: "NA"),

  // ];

  static List<Department> derpartments = [
    Department(
      name: "Aernoutical Engineering",
      image: "assets/images/dept logo/AE.png",
      code: "AE",
      mediumArticleLink:
          "https://medium.com/@swgiitkgp/know-your-department-aerospace-engineering-2f56a3572ffe",
    ),
    Department(
        name: "Agricultural and Food Processing",
        image: "assets/images/dept logo/AG.png",
        code: "AG",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-agricultural-and-food-engineering-99f88ff9d8a8"),
    Department(
        name: "Bio-Technology",
        image: "assets/images/dept logo/BT.png",
        code: "BT",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-biotechnology-2e105384ce43"),
    Department(
      name: "Chemical Engineering",
      image: "assets/images/dept logo/CH.png",
      code: "CH",
      mediumArticleLink:
          "https://medium.com/@swgiitkgp/know-your-department-chemical-engineering-c54d2bc608d5",
    ),
    Department(
        name: "Chemistry",
        image: "assets/images/dept logo/CH.png",
        code: "CY",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-chemistry-ce8973b56a67"),
    Department(
        name: "Civil Engineering",
        image: "assets/images/dept logo/CE.png",
        code: "CE",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-civil-engineering-63caabd97cb0"),
    Department(
        name: "Computer Science and Engineering",
        image: "assets/images/dept logo/CS.png",
        code: "CS",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-computer-science-and-engineering-24392aab7146"),
    Department(
        name: "Electronics and Communication Engineering",
        image: "assets/images/dept logo/EC.png",
        code: "EC",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-electronics-and-electrical-communications-engineering-4bf6a043475"),
    Department(
        name: "Electrical Engineering",
        image: "assets/images/dept logo/EE.png",
        code: "EE",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-electrical-engineering-7a66cc2a80d3"),
    Department(
        name: "Exploration Geophysics",
        image: "assets/images/dept logo/EX.png",
        code: "EX",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-geology-and-geophysics-31fd09664b3d"),
    Department(
        name: "Humanities and Social Sciences",
        image: "assets/images/dept logo/HS.png",
        code: "HS",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-branch-economics-67e8b350a5de"),
    Department(
        name: "Industrial and Systems Engineering",
        image: "assets/images/dept logo/IM.png",
        code: "IM",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-industrial-and-systems-engineering-50fe3321bd6dd"),
    Department(
      name: "Instrumentation Engineering",
      image: "assets/images/dept logo/IE.png",
      code: "IE",
      // mediumArticleLink:
      // "https://medium.com/@swgiitkgp/know-your-department-industrial-and-systems-engineering-50fe3321bd6dd",
    ),
    Department(
        name: "Mathematics",
        image: "assets/images/dept logo/MA.png",
        code: "MA",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-mathematics-d5ad3ff992f4"),
    Department(
        name: "Mechanical Engineering",
        image: "assets/images/dept logo/ME.png",
        code: "ME",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-mechanical-engineering-bf4aaa54e8d"),
    Department(
        name: "Mining Engineering",
        image: "assets/images/dept logo/MI.png",
        code: "MI",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-mining-engineering-2c37de00793f"),
    Department(
        name: " Manufacturing Science",
        image: "assets/images/dept logo/MF.png",
        code: "MF",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-manufacturing-science-1b3b3b3b3b3b"),
    Department(
        name: "Metallurgical and Materials Engineering",
        image: "assets/images/dept logo/MT.png",
        code: "MT",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-metallurgical-and-materials-engineering-26d1070cec97"),
    Department(
        name: "Physics",
        image: "assets/images/dept logo/PH.png",
        code: "PH",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-physics-da4bdb49af6b"),
    Department(
        name: "Naval Architecture and Ocean Engineering",
        image: "assets/images/dept logo/NA.png",
        code: "NA",
        mediumArticleLink:
            "https://medium.com/@swgiitkgp/know-your-department-ocean-engineering-and-naval-architecture-82ebca5c6bdf"),
  ];
}

class GlobalStyles {
  static Color kPrimaryBlueColor = const Color.fromARGB(255, 211, 250, 255);
  static Color shodowBlueColor = const Color.fromARGB(255, 85, 215, 255);
  static Color kSecondaryBlueColor = const Color.fromARGB(255, 67, 221, 255);
  static BoxDecoration blueShadowCardDeco = BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(20)),
    boxShadow: [
      BoxShadow(
        color: shodowBlueColor,
        blurRadius: 4.0,
        spreadRadius: 0.0,
        offset: const Offset(4.0, 4.0),
      )
    ],
  );

  static BoxDecoration cardDeco = const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
    color: Color.fromARGB(255, 163, 234, 254),
    boxShadow: [
      BoxShadow(
        color: Colors.black,
        blurRadius: 4.0, // soften the shadow
        spreadRadius: 0.0, //extend the shadow
      ),
      //inner shadow

      BoxShadow(
        color: Color.fromARGB(255, 163, 234, 254),
        blurRadius: 10.0,
        spreadRadius: 0.0,
        offset: Offset(0, 0),
      ),
    ],
  );
}
