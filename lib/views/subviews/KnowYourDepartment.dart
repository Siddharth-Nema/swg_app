import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/models/Department.dart';
import 'package:swg_flutter/widgets/KnowYourDepartment/department_tile.dart';

class KnowYourDepartment extends StatelessWidget {
  const KnowYourDepartment({super.key});

  List<DepartmentTile> getDepartments() {
    List<DepartmentTile> deps = [];

    for (Department branch in GlobalConstants.derpartments) {
      deps.add(DepartmentTile(branch: branch));
    }
    return deps;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Know Your Department',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          color: GlobalStyles.kPrimaryBlueColor,
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  "assets/images/KnowYourDep.png",
                  scale: 4,
                ),
              ),
              const Text(
                "Know your \n Department",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Dive in to know more about your department in the words of final and pre final year students",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: List.generate(
                      150 ~/ 1,
                      (index) => Expanded(
                            child: Container(
                              color: index % 2 == 0
                                  ? Colors.transparent
                                  : Colors.black,
                              height: 2,
                            ),
                          )),
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                children: getDepartments(),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
