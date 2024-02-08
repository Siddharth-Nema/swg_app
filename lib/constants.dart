import 'package:flutter/material.dart';
import 'package:swg_flutter/models/Branch.dart';
import 'package:swg_flutter/models/Society.dart';

const Color kPrimaryBlueColor = Color.fromARGB(255, 163, 234, 254);
List<Society> societies = [
  Society(
      name: 'Student Welfare Group',
      icon: const AssetImage('assets/images/3.png'),
      intro: 'Work for the academic welfare of students')
];

List<Branch> branches = [
  Branch(name: "Aerospace Engineering"),
  Branch(name: "Agricultural and Food Processing"),
  Branch(name: "Bio-Technology"),
  Branch(name: "Chemistry"),
];
