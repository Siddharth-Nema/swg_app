import 'package:flutter/material.dart';
import 'package:swg_flutter/widgets/StudyMaterial/year_wise_tab.dart';

class StudyMaterial extends StatelessWidget {
  const StudyMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: const Color.fromARGB(255, 163, 234, 254),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
              "https://cdn-icons-png.flaticon.com/512/2847/2847502.png",
              scale: 3.5,
            ),
          ),
          const Text(
            "Study Material",
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
              )),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                YearWiseTile(
                  year: "First",
                  desc: "Study Material for phy and chem sem",
                  onClick: () {
                    Navigator.pushNamed(context, "/firstyearstudy");
                  },
                ),
                YearWiseTile(
                  year: "Second",
                  desc: "Study Material for all departments",
                  onClick: () {
                    Navigator.pushNamed(context, "/firstyearstudy");
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                YearWiseTile(
                  year: "Third",
                  desc: "Study Material for phy and chem sem",
                  onClick: () {
                    Navigator.pushNamed(context, "/firstyearstudy");
                  },
                ),
                YearWiseTile(
                  year: "Fourth",
                  desc: "Study Material for all departments",
                  onClick: () {
                    Navigator.pushNamed(context, "/firstyearstudy");
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
