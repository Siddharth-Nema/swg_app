import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(145.0),
          child: Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(224, 237, 251, 1)),
            child: Expanded(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        margin: const EdgeInsets.all(10),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.all(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    labelColor: Color.fromRGBO(0, 0, 0, 1),
                    tabs: [
                      Tab(
                        text: 'My Feed',
                      ),
                      Tab(
                        text: 'My Questions',
                      ),
                      Tab(
                        text: 'My Answers',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            // Content for My Feed tab
            SingleChildScrollView(
              child: Column(
                children: [Feed(), Feed(), Feed()],
              ),
            ),
            // Content for My Questions tab
            Center(
              child: Text('My Questions'),
            ),
            // Content for My Answers tab
            Center(
              child: Text('My Answers'),
            ),
          ],
        ),
      ),
    );
  }
}

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
              ),
              const SizedBox(width: 10),
              const Expanded(child: Text("Username")),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          const Divider(),
          SizedBox(
              height: 100,
              child: const Text(
                  "lore ipsum lore ipsum lore ipsum lore ipsum lore ipsum ")),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write a comment',
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt_outlined))
              ],
            ),
          ), // Spacer
        ],
      ),
    );
  }
}
