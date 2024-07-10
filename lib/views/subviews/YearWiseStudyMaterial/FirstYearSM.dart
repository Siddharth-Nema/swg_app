import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/widgets/StudyMaterial/DepressedButton.dart';

class FirstYearSM extends StatelessWidget {
  const FirstYearSM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 36,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 28,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 28,
          ),
        ],
        centerTitle: true,
        title: const Text(
          "Study Material",
          style: TextStyle(color: Colors.black),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: GlobalStyles.kPrimaryBlueColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  // "https://cdn-icons-png.flaticon.com/512/2847/2847502.png",
                  "assets/images/books.png",
                  height: 100,
                ),
              ),
              const Text(
                "Study Material \n for Freshers",
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
              const DepressedButton(text: 'Study Material'),
              const DepressedButton(text: 'Previous Year Papers'),
              const DepressedButton(text: 'NPTEL Channel')
            ],
          ),
        ),
      ),
    );
  }
}
