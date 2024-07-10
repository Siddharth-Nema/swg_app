import 'package:flutter/material.dart';
import 'package:swg_flutter/views/CDC/CDCPage.dart';
import 'package:swg_flutter/views/CommunityPage.dart';
import 'package:swg_flutter/views/LandingPage.dart';
import 'package:swg_flutter/views/ProfileView.dart';
import 'package:swg_flutter/views/StudyMaterial.dart';
import 'package:swg_flutter/widgets/SideBarView.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  setIndex(index) {
    setState(() {
      _selectedIndex = index;
    });


  }
 

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 2);
    List<Widget> views = [
      const StudyMaterial(),
      CDCPage(setIndex: setIndex),
      LandingPage(toPage: (index) {
        setIndex(index);
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.decelerate);
      }),
      const CommunityPage(
        key: GlobalObjectKey(""),
      ),
      const ProfileView(),
    ];

    List<String> titles = [
      "Study Material",
      "CDC",
      "Student Welfare Group",
      "Community",
      "Profile",
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        actionsIconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          titles[_selectedIndex],
          style: const TextStyle(color: Colors.black),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: views,
      ),
      drawer: SideBarView(
        changeIndex: (int index) {
          setIndex(index);
          controller.jumpToPage(index);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //book
              GestureDetector(
                onTap: () {
                  setState(() {
                    controller.jumpToPage(0);
                    _selectedIndex = 0;
                  });
                },
                child: _selectedIndex == 0
                    ? const ImageIcon(
                        AssetImage('assets/images/blue/book.png'),
                        size: 30.0,
                        color: Colors.blue,
                      )
                    : const ImageIcon(
                        AssetImage('assets/images/book.png'),
                        size: 30.0,
                      ),
              ),

              //grad
              GestureDetector(
                child: _selectedIndex == 1
                    ? const ImageIcon(
                        AssetImage('assets/images/blue/grad.png'),
                        size: 30.0,
                        color: Colors.blue,
                      )
                    : const ImageIcon(
                        AssetImage('assets/images/grad.png'),
                        size: 30.0,
                      ),
                onTap: () {
                  setState(() {
                    controller.jumpToPage(1);

                    _selectedIndex = 1;
                  });
                },
              ),
              const SizedBox(
                width: 20,
              ),
              //community
              GestureDetector(
                child: _selectedIndex == 3
                    ? const ImageIcon(
                        AssetImage('assets/images/blue/group.png'),
                        size: 30.0,
                        color: Colors.blue,
                      )
                    : const ImageIcon(
                        AssetImage('assets/images/group.png'),
                        size: 30.0,
                      ),
                onTap: () {
                  setState(() {
                    controller.jumpToPage(3);

                    _selectedIndex = 3;
                  });
                },
              ),

              //profile
              GestureDetector(
                onTap: () {
                  setState(() {
                    controller.jumpToPage(4);

                    _selectedIndex = 4;
                  });
                },
                child: _selectedIndex == 4
                    ? const ImageIcon(
                        AssetImage('assets/images/blue/profile.png'),
                        size: 30.0,
                        color: Colors.blue,
                      )
                    : const ImageIcon(
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
            color: _selectedIndex == 2
                ? Colors.blue.withOpacity(0.1)
                : Colors.grey.withOpacity(0.1),
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
            onPressed: () {
              setState(() {
                controller.jumpToPage(2);
                _selectedIndex = 2;
              });
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
