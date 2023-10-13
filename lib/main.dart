import 'package:flutter/material.dart';
import 'package:swg_flutter/widgets/column_tile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 36,
          ),
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
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(24.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/1.png'),
                                fit: BoxFit.cover)),
                        height: 150,
                      ),
                      Positioned(
                        top: 125,
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/images/1.png'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 5,
                              color: Colors.white,
                            ),
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  "Siddharth Nema",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const Text("23MI10045"),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Column(children: [
                    ColumnTile(heading: "Mentor", desc: "Satyaki Chakraborty"),
                    ColumnTile(
                        heading: "Department",
                        desc: "Department of Civil Engineering"),
                    ColumnTile(heading: "Facad", desc: "Prof. Bharab Maitra"),
                    ColumnTile(
                        heading: "Hall Warden",
                        desc: "Prof. Sanjeeb Kumar Patra"),
                    ColumnTile(
                        heading: "B C Roy Ambulance", desc: "03222 281 008"),
                    ColumnTile(
                        heading: "Councelling Centre", desc: "03222 281 008")
                  ]),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          notchMargin: 10.0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageIcon(
                  AssetImage('assets/images/book.png'),
                  size: 30.0,
                ),
                ImageIcon(
                  AssetImage('assets/images/grad.png'),
                  size: 30.0,
                ),
                SizedBox(
                  width: 20,
                ),
                ImageIcon(
                  AssetImage('assets/images/group.png'),
                  size: 30.0,
                ),
                ImageIcon(
                  AssetImage('assets/images/profile.png'),
                  size: 30.0,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ]),
          height: 60,
          width: 60,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/3.png"),
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
