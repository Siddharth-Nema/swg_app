import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/models/Department.dart';
import 'package:swg_flutter/widgets/KnowYourDepartment/department_tile.dart';

class SecondYearSM extends StatelessWidget {
  const SecondYearSM({super.key});

  List<DepartmentTile> getDepartments() {
    List<DepartmentTile> deps = [];

    for (Department branch in GlobalConstants.departments) {
      deps.add(DepartmentTile(
        branch: branch,
        forStudyMaterial: true,
      ));
    }
    return deps;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Year Study Material',
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
                  // "https://cdn-icons-png.flaticon.com/512/2847/2847502.png",
                  "assets/images/books.png",
                  height: 100,
                ),
              ),
              const Text(
                "Study Material \n for Second Year",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "All the material you need a night before exam compiled in one place.",
                  style: TextStyle(
                    fontSize: 12,
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
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: getDepartments(),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
