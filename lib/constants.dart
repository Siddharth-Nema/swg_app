import 'package:flutter/material.dart';
import 'package:swg_flutter/models/Branch.dart';
import 'package:swg_flutter/models/Department.dart';
import 'package:swg_flutter/models/Society.dart';

class GlobalConstants {
  static Color kPrimaryBlueColor = Color.fromARGB(255, 163, 234, 254);
  // 55D7FF
  static Color ShodowBlueColor = Color.fromARGB(255, 85, 215, 255);
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

  static List<Department> derpartments = [
    Department(
      name: "CSE",
      image: "assets/images/image6.png",
    ),
    Department(
      name: "ECE",
      image: "assets/images/image7.png",
    ),
    Department(
      name: "EEE",
      image: "assets/images/image8.png",
    ),
    Department(
      name: "MECH",
      image: "assets/images/image9.png",
    ),
    Department(
      name: "CIVIL",
      image: "assets/images/image10.png",
    ),
  ];
}
