import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// ...

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 163, 234, 254),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hello Anish!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  // Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: Text(
                  //     "Welcome to the students welfare group app ",
                  //     style:
                  //         TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming events",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("See all >",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(height: 150.0),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image:
                                          AssetImage('assets/images/cos1.png'),
                                      fit: BoxFit.cover,
                                      opacity: 0.8,
                                      colorFilter: ColorFilter.mode(
                                          Color.fromARGB(137, 37, 37, 37),
                                          BlendMode.colorBurn),
                                    )),
                                child: const Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Carrer Orientation Session",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromRGBO(
                                                        241, 191, 87, 1))),
                                            Text("Student Welfare Group",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white)),
                                            Text("Date and Time: ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                            Text("Location: ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                            Text("Target Audience:",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 4,
                                        right: 8,
                                        child: Text("Know More >",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                decoration:
                                                    TextDecoration.underline)))
                                  ],
                                ),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  element,
                  element
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final Widget element = Padding(
  padding: const EdgeInsets.all(16.0),
  child: Container(
    decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(
      children: [
        const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Know your department",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 3,
                children: <Widget>[
                  DepartmentCard(
                    title: "CSE",
                    image: "assets/images/image6.png",
                  ),
                  DepartmentCard(
                    title: "ECE",
                    image: "assets/images/image7.png",
                  ),
                  DepartmentCard(
                    title: "EEE",
                    image: "assets/images/image8.png",
                  ),
                  DepartmentCard(
                    title: "MECH",
                    image: "assets/images/image9.png",
                  ),
                  DepartmentCard(
                    title: "CIVIL",
                    image: "assets/images/image10.png",
                  ),
                  Container(
                    // decoration: const BoxDecoration(color: Colors.amber),
                    child: const Column(
                      children: [
                        Icon(Icons.arrow_circle_right_outlined,
                            size: 50, color: Colors.black),
                        Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ]),
          ),
        )
      ],
    ),
  ),
);

class DepartmentCard extends StatelessWidget {
  String title;
  String image;
  DepartmentCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(color: Colors.amber),
      child: Column(
        children: [
          Image.asset(image, scale: 1.5),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
