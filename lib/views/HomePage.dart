import 'package:flutter/material.dart';
import 'package:swg_flutter/views/CDCPage.dart';
import 'package:swg_flutter/views/ProfileView.dart';
import 'package:swg_flutter/widgets/column_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> views = const [ProfileView(), CDCPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: views[_selectedIndex],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                child: const ImageIcon(
                  AssetImage('assets/images/book.png'),
                  size: 30.0,
                ),
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
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: const ImageIcon(
                  AssetImage('assets/images/profile.png'),
                  size: 30.0,
                ),
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
    );
  }
}