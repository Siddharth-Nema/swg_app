import 'package:flutter/material.dart';
import 'package:swg_flutter/widgets/member_info_tile.dart';

class TeamInfo extends StatelessWidget {
  const TeamInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: const Color.fromARGB(255, 163, 234, 254),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              const TabBar(
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Text(
                        "Student Members",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Heads",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.black,
                  height: 2,
                ),
              ),
              Expanded(
                  child: TabBarView(children: [
                ListView(
                  children: const [
                    MemberInfoTile(
                      name: "Anish Behuray",
                      position: "Head",
                    ),
                    MemberInfoTile(
                      name: "Anish Behuray",
                      position: "Head",
                    )
                  ],
                ),
                ListView(
                  children: const [
                    MemberInfoTile(
                      name: "Anish Behuray",
                      position: "Head",
                    ),
                    MemberInfoTile(
                      name: "Shubham Singh",
                      position: "Head",
                    )
                  ],
                ),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
