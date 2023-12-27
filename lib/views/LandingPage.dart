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
            const Column(
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
                Text(
                  "Welcome to the students welfare group app ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming events",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text("See all >",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(height: 200.0),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration:
                                  const BoxDecoration(color: Colors.amber),
                              child: Text(
                                'text $i',
                                style: const TextStyle(fontSize: 16.0),
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
                shrinkWrap: true,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 3,
                children: <Widget>[
                  innerElement,
                  innerElement,
                  innerElement,
                  innerElement,
                  innerElement,
                  innerElement,
                ]),
          ),
        )
      ],
    ),
  ),
);

final Widget innerElement = Container(
  decoration: const BoxDecoration(color: Colors.amber),
  child: const Text("data"),
);
