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

  static List<Department> departments = [
    Department(
        name: "Computer Science and Engineering",
        image: "assets/images/image6.png",
        code: 'CSE'),
    Department(
        name: "Electronics and Electrical Communication Engineering",
        image: "assets/images/image7.png",
        code: 'ECE'),
    Department(
        name: "Electrical Engineering",
        image: "assets/images/image8.png",
        code: 'EEE'),
    Department(
        name: "Mechanical Engineering",
        image: "assets/images/image9.png",
        code: 'ME'),
    Department(
        name: "Civil Engineering",
        image: "assets/images/image10.png",
        code: 'CE'),
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

  static BoxDecoration cardDeco = BoxDecoration(
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
