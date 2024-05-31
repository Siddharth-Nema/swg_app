import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/models/Department.dart';
// ...

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            color: GlobalConstants.kPrimaryBlueColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: const Radius.circular(30))),
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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: GlobalConstants.ShodowBlueColor,

                            blurRadius: 4.0,
                            spreadRadius: 0.0,
                            offset: const Offset(
                                4.0, 4.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Know your department",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: GridView.count(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    crossAxisCount: 3,
                                    childAspectRatio: 1.25,
                                    children: <Widget>[
                                      ...GlobalConstants.derpartments
                                          .map((department) => DepartmentCard(
                                              department: department))
                                          .toList(),
                                      Column(
                                        children: [
                                          Container(
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            padding: const EdgeInsets.all(8),
                                            child: const Center(
                                              child: Icon(
                                                  Icons.arrow_forward_sharp,
                                                  size: 24,
                                                  fill: 0,
                                                  weight: 0.2,
                                                  grade: 0.5,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          const Text(
                                            "View All",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DepartmentCard extends StatelessWidget {
  Department department;

  DepartmentCard({super.key, required this.department});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(color: Colors.amber),
      child: Column(
        children: [
          Image.asset(department.image, scale: 1.5),
          Text(
            department.name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
