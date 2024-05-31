import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/models/Branch.dart';
import 'package:swg_flutter/widgets/KnowYourDepartment/department_tile.dart';

class KnowYourDepartment extends StatelessWidget {
  const KnowYourDepartment({super.key});

  List<DepartmentTile> getDepartments() {
    List<DepartmentTile> deps = [];

    for (Branch branch in GlobalConstants.branches) {
      deps.add(DepartmentTile(branch: branch));
    }
    print("here");
    return deps;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: const Color.fromARGB(255, 163, 234, 254),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.network(
            "https://cdn.icon-icons.com/icons2/1485/PNG/512/id-card_102342.png",
            scale: 3.5,
          ),
        ),
        const Text(
          "Know your \n Department",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Dive in to know more about your department in the words of final and pre final year students",
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
                        color:
                            index % 2 == 0 ? Colors.transparent : Colors.black,
                        height: 2,
                      ),
                    )),
          ),
        ),
        Expanded(
            child: GridView.count(
          crossAxisCount: 2,
          children: getDepartments(),
          physics: NeverScrollableScrollPhysics(),
        ))
      ]),
    );
  }
}
