import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/widgets/StudyMaterial/DepressedButton.dart';
import 'package:url_launcher/url_launcher.dart';

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
              DepressedButton(
                  text: 'Study Material',
                  onPressed: () {
                    launchUrl(Uri.parse(
                        "https://drive.google.com/drive/folders/1cZjU_l2NUIuxnRofN30DqavQZ1tHr4Wy"));
                  }),
              // const DepressedButton(text: 'Chemistry Sem'),
              DepressedButton(
                  text: 'Previous Year Papers',
                  onPressed: () {
                    launchUrl(Uri.parse(
                        "https://drive.google.com/drive/folders/14TZrcnxgnkd3ctlNt3eNyly0F3L5GyUs"));
                  }),
              DepressedButton(
                  text: 'NPTEL Channel',
                  onPressed: () {
                    launchUrl(Uri.parse("https://www.youtube.com/@iit"));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
